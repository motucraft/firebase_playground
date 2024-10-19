// See...
// https://firebase.google.com/docs/cloud-messaging/auth-server?_gl=1*14dct3p*_up*MQ..*_ga*NDg5MDI5NDQ4LjE3MjkyNjQwNzk.*_ga_CW55HF8NVT*MTcyOTI2NDA3OC4xLjAuMTcyOTI2NDA3OC4wLjAuMA..#provide-credentials-manually

import { google } from 'googleapis';
import fs from 'fs';

const SCOPES = ['https://www.googleapis.com/auth/firebase.messaging'];

const key = JSON.parse(fs.readFileSync('./fir-playground-5015e-firebase-adminsdk-gebdv-06b7ac4cdb.json', 'utf-8'));

function getAccessToken() {
  return new Promise(function(resolve, reject) {
    const jwtClient = new google.auth.JWT(
      key.client_email,
      null,
      key.private_key,
      SCOPES,
      null
    );
    jwtClient.authorize(function(err, tokens) {
      if (err) {
        reject(err);
        return;
      }
      resolve(tokens.access_token);
    });
  });
}

try {
  const accessToken = await getAccessToken();
  console.log('Access Token:', accessToken);
} catch (error) {
  console.error('Error fetching access token:', error);
}

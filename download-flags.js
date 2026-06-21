const fs = require('fs');
const path = require('path');
const https = require('https');

// Mapping language codes to country codes
const countryCodeMap = {
  es: 'es',      // Spanish - Spain
  zh: 'cn',      // Chinese - China
  ru: 'ru',      // Russian - Russia
  hi: 'in',      // Hindi - India
  fr: 'fr',      // French - France
  pt: 'pt',      // Portuguese - Portugal
  tr: 'tr',      // Turkish - Turkey
  vi: 'vn',      // Vietnamese - Vietnam
  ko: 'kr',      // Korean - South Korea
  ja: 'jp',      // Japanese - Japan
  ab: 'ge',      // Abkhazian - Georgia
  aa: 'et',      // Afar - Ethiopia
  af: 'za',      // Afrikaans - South Africa
  ak: 'gh',      // Akan - Ghana
  sq: 'al',      // Albanian - Albania
  am: 'et',      // Amharic - Ethiopia
  ar: 'sa',      // Arabic - Saudi Arabia
  an: 'es',      // Aragonese - Spain
  hy: 'am',      // Armenian - Armenia
  as: 'in',      // Assamese - India
  ay: 'bo',      // Aymara - Bolivia
  az: 'az',      // Azerbaijani - Azerbaijan
  bm: 'ml',      // Bambara - Mali
  eu: 'es',      // Basque - Spain
  be: 'by',      // Belarusian - Belarus
  bn: 'bd',      // Bengali - Bangladesh
  bh: 'in',      // Bihari - India
  bi: 'vu',      // Bislama - Vanuatu
  bs: 'ba',      // Bosnian - Bosnia
  br: 'fr',      // Breton - France
  bg: 'bg',      // Bulgarian - Bulgaria
  my: 'mm',      // Burmese - Myanmar
  ca: 'es',      // Catalan - Spain
  ch: 'gu',      // Chamorro - Guam
  ce: 'ru',      // Chechen - Russia
  ny: 'mw',      // Chichewa - Malawi
  co: 'fr',      // Corsican - France
  cr: 'ca',      // Cree - Canada
  hr: 'hr',      // Croatian - Croatia
  cs: 'cz',      // Czech - Czech Republic
  da: 'dk',      // Danish - Denmark
  dv: 'mv',      // Divehi - Maldives
  nl: 'nl',      // Dutch - Netherlands
  en: 'gb',      // English - Great Britain
  et: 'ee',      // Estonian - Estonia
  ee: 'gh',      // Ewe - Ghana
  fo: 'fo',      // Faroese - Faroe Islands
  fj: 'fj',      // Fijian - Fiji
  fi: 'fi',      // Finnish - Finland
  gl: 'es',      // Galician - Spain
  ka: 'ge',      // Georgian - Georgia
  de: 'de',      // German - Germany
  el: 'gr',      // Greek - Greece
  gn: 'py',      // Guarani - Paraguay
  gu: 'in',      // Gujarati - India
  ht: 'ht',      // Haitian - Haiti
  ha: 'ng',      // Hausa - Nigeria
  he: 'il',      // Hebrew - Israel
  hu: 'hu',      // Hungarian - Hungary
  is: 'is',      // Icelandic - Iceland
  id: 'id',      // Indonesian - Indonesia
  ga: 'ie',      // Irish - Ireland
  it: 'it',      // Italian - Italy
  jv: 'id',      // Javanese - Indonesia
  kn: 'in',      // Kannada - India
  kk: 'kz',      // Kazakh - Kazakhstan
  km: 'kh',      // Khmer - Cambodia
  ku: 'iq',      // Kurdish - Iraq
  lo: 'la',      // Lao - Laos
  la: 'va',      // Latin - Vatican
  lv: 'lv',      // Latvian - Latvia
  lt: 'lt',      // Lithuanian - Lithuania
  mk: 'mk',      // Macedonian - Macedonia
  ms: 'my',      // Malay - Malaysia
  ml: 'in',      // Malayalam - India
  mt: 'mt',      // Maltese - Malta
  mi: 'nz',      // Maori - New Zealand
  mr: 'in',      // Marathi - India
  mn: 'mn',      // Mongolian - Mongolia
  ne: 'np',      // Nepali - Nepal
  no: 'no',      // Norwegian - Norway
  ps: 'af',      // Pashto - Afghanistan
  fa: 'ir',      // Persian - Iran
  pl: 'pl',      // Polish - Poland
  pa: 'in',      // Punjabi - India
  qu: 'pe',      // Quechua - Peru
  ro: 'ro',      // Romanian - Romania
  sm: 'ws',      // Samoan - Samoa
  sr: 'rs',      // Serbian - Serbia
  sk: 'sk',      // Slovak - Slovakia
  sl: 'si',      // Slovenian - Slovenia
  so: 'so',      // Somali - Somalia
  sw: 'tz',      // Swahili - Tanzania
  sv: 'se',      // Swedish - Sweden
  tl: 'ph',      // Tagalog - Philippines
  tg: 'tj',      // Tajik - Tajikistan
  ta: 'in',      // Tamil - India
  te: 'in',      // Telugu - India
  th: 'th',      // Thai - Thailand
  uk: 'ua',      // Ukrainian - Ukraine
  ur: 'pk',      // Urdu - Pakistan
  uz: 'uz',      // Uzbek - Uzbekistan
  cy: 'gb',      // Welsh - Great Britain
  xh: 'za',      // Xhosa - South Africa
  zu: 'za',      // Zulu - South Africa
  tw: 'tw',      // Taiwan
};

// Create directory if not exists
const flagsDir = path.join(__dirname, 'assets', 'flags');
if (!fs.existsSync(flagsDir)) {
  fs.mkdirSync(flagsDir, { recursive: true });
  console.log(`✓ Created directory: ${flagsDir}`);
}

// Download function
function downloadFlag(countryCode, languageCode) {
  return new Promise((resolve, reject) => {
    const url = `https://flagcdn.com/${countryCode}.svg`;
    const filename = `${languageCode}.svg`;
    const filepath = path.join(flagsDir, filename);

    https.get(url, (response) => {
      if (response.statusCode === 200) {
        response.pipe(fs.createWriteStream(filepath));
        response.on('end', () => {
          console.log(`✓ Downloaded: ${filename} (${countryCode})`);
          resolve();
        });
      } else {
        console.error(`✗ Failed: ${filename} (${countryCode}) - Status: ${response.statusCode}`);
        resolve(); // Continue even if one fails
      }
    }).on('error', (err) => {
      console.error(`✗ Error downloading ${filename}:`, err.message);
      resolve(); // Continue even if one fails
    });
  });
}

// Download all flags
async function downloadAllFlags() {
  console.log('🚀 Starting to download country flags...\n');
  
  const entries = Object.entries(countryCodeMap);
  const total = entries.length;
  
  for (let i = 0; i < total; i++) {
    const [languageCode, countryCode] = entries[i];
    await downloadFlag(countryCode, languageCode);
    
    // Show progress
    if ((i + 1) % 10 === 0) {
      console.log(`Progress: ${i + 1}/${total}\n`);
    }
  }
  
  console.log(`\n✅ All flags downloaded! Total: ${total} files`);
  console.log(`📁 Location: ${flagsDir}`);
}

// Start downloading
downloadAllFlags().catch(console.error);

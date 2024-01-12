// Import Rails libraries and styles
import Rails from '@rails/ujs';
import * as ActiveStorage from '@rails/activestorage';
import 'channels';

Rails.start();
ActiveStorage.start();

// Your additional global JavaScript code
// ...

// Import other packs if needed
import './search.js';
import 'tailwindcss/base';
import 'tailwindcss/components';
import 'tailwindcss/utilities';
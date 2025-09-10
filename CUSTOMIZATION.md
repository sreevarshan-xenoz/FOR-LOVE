# Love Confession Website Configuration

## Personalization Settings

### Names
- **Replace in index.html:**
  - `HER_NAME = "My Love"` → Change to her actual name
  - `YOUR_NAME = "Alex"` → Change to your actual name

### Memory Photos
Replace the Unsplash URLs in the `memories` array with your own photos:

1. **First Coffee Date Photo:**
   - Current: `https://images.unsplash.com/photo-1516487106395-f2d269d6a21c...`
   - Replace with: Your actual first date photo URL

2. **Rainy Day Walk Photo:**
   - Current: `https://images.unsplash.com/photo-1531913764164-f85c52e6e654...`
   - Replace with: Your actual rainy day photo URL

3. **Sunset Beach Photo:**
   - Current: `https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d...`
   - Replace with: Your actual sunset photo URL

### Memory Captions
Update the captions to match your actual memories:
- "Our first coffee date ☕️"
- "That rainy day walk 🌧️"
- "Sunset at the beach 🌅"

### Love Letter Content
Customize the letter lines in the `renderEnvelopeStep()` function:
- "Every challenge feels easier because I imagine you by my side."
- "You are not just my friend, you're the most special part of my life."
- "You make me smile, you make my heart race, and you make me want to be a better version of myself."
- "I don't know what the future holds, but I know one thing for sure."
- "I want that future with you."

### Background Music
Replace the sample music URL:
- Current: `https://assets.mixkit.co/music/preview/mixkit-kissing-romantically-483.mp3`
- Replace with: Your chosen romantic song URL (MP3 format recommended)

## Deployment Options

### Option 1: GitHub Pages (Free)
1. Push your repository to GitHub
2. Go to repository Settings → Pages
3. Select source: Deploy from a branch
4. Choose main branch
5. Your site will be available at: `https://yourusername.github.io/FOR-LOVE`

### Option 2: Netlify (Free)
1. Create account at netlify.com
2. Drag and drop your project folder
3. Get instant URL for sharing

### Option 3: Vercel (Free)
1. Create account at vercel.com
2. Import from GitHub or upload folder
3. Get instant deployment

### Option 4: Azure Static Web Apps
1. Use Azure CLI or portal
2. Deploy directly from GitHub
3. Get custom domain options

## Mobile Optimization Notes

- Audio autoplay requires user interaction on mobile
- Touch targets are optimized for finger taps
- Responsive design works on all screen sizes
- "No" button movement works with touch gestures

## Security & Privacy

Consider adding password protection for privacy:
- Use Netlify's password protection feature
- Or add a simple password prompt in JavaScript

## Testing Checklist

- [ ] Replace all placeholder names
- [ ] Upload and replace memory photos
- [ ] Customize love letter content
- [ ] Add your chosen background music
- [ ] Test on mobile devices
- [ ] Test audio playback
- [ ] Verify all animations work smoothly
- [ ] Check "No" button movement on touch devices

## File Structure
```
FOR-LOVE/
├── index.html          # Main website file
├── README.md          # Project documentation
└── CUSTOMIZATION.md   # This configuration guide
```

## Tips for Success

1. **Choose the right moment** - Make sure she has time and privacy
2. **Test thoroughly** - Check on her type of device (iPhone/Android)
3. **Have backup plan** - Screenshot key moments in case of tech issues
4. **Prepare follow-up** - Have the actual ring ready! 💍
5. **Share the URL** - Send her the link in a special way

## Troubleshooting

### Audio doesn't play
- User must interact with the page first (click something)
- Try different audio formats (MP3, WAV, OGG)
- Check browser console for errors

### Animations are choppy
- Ensure good internet connection
- Test on different devices
- Consider reducing floating hearts count

### Images don't load
- Verify image URLs are accessible
- Use HTTPS URLs for images
- Consider hosting images on the same domain

Good luck with your proposal! 💕

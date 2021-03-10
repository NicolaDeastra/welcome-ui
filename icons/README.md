# How to add icons in welcome-ui (from abstract)

1.  Download the svg from abstract into the `icons/_assets/` folder, using snake_case for the name

7.  Run `yarn icons:collect`

7.  Run `yarn icons:build`

7.  Run `yarn webfont:build`

8.  Run `yarn build`

9.  Run `yarn`

10. Add your new icon(s) in the doc for `icons` and `iconFont` respectively in `docs/pages/components/icon.mdx` and `docs/pages/components/icon-font.mdx`

11. Start/Restart your front server

12. Go fetch a 🍺, you're done!

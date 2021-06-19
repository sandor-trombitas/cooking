module.exports = function (eleventyConfig) {
  // Copy the `img` and `css` folders to the output
  eleventyConfig.addPassthroughCopy('images');
  eleventyConfig.addPassthroughCopy('css');

  eleventyConfig.addCollection('allTags', (collectionApi) => {
    return collectionApi.getAll();
  });
};

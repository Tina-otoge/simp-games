module.exports = ({ env }) => ({
  slugify: {
    enabled: true,
    config: {
      contentTypes: {
        game: {
          field: "slug",
          references: "name",
        },
      },
    },
  },
});

class NewsEntity {
  final String status;
  final List<ResultsEntity> results;

  NewsEntity({
    required this.status,
    required this.results,
  });
}

class ResultsEntity {
  final int id;
  final String title;
  final String byLine;
  final String publishedDate;
  final String source;
  final List<MediaEntity> media;

  ResultsEntity({
    required this.title,
    required this.id,
    required this.byLine,
    required this.media,
    required this.publishedDate,
    required this.source,
  });
}

class MediaEntity {
  final List<MetaDataEntity> metaDataEntity;
  final String caption;


  MediaEntity({
    required this.metaDataEntity,
    required this.caption,
  });
}

class MetaDataEntity {
  final String imgUrl;

  MetaDataEntity({
    required this.imgUrl,
  });
}
/*
{
      "uri": "nyt://article/0e8c69da-0ac4-5b44-83f6-3c6860a055f5",
      "url": "https://www.nytimes.com/2023/12/07/us/politics/republican-debate-takeaways.html",
      "id": 100000009213159,
      "asset_id": 100000009213159,
      "source": "New York Times",
      "published_date": "2023-12-07",
      "updated": "2023-12-07 02:03:31",
      "section": "U.S.",
      "subsection": "Politics",
      "nytdsection": "u.s.",
      "adx_keywords": "Debates (Political);Primaries and Caucuses;Presidential Election of 2024;United States Politics and Government;Haley, Nikki R;DeSantis, Ron;Christie, Christopher J;Ramaswamy, Vivek (1985- );Trump, Donald J;Kelly, Megyn;Republican Party",
      "column": null,
      "byline": "By Shane Goldmacher, Maggie Haberman and Jonathan Swan",
      "type": "Article",
      "title": "Five Takeaways From the Republican Debate",
      "abstract": "An ascendant Nikki Haley endured a barrage from Ron DeSantis and Vivek Ramaswamy. Chris Christie delivered a strong showing. And with time ticking down, there were few direct attacks on Donald Trump.",
      "des_facet": [
        "Debates (Political)",
        "Primaries and Caucuses",
        "Presidential Election of 2024",
        "United States Politics and Government"
      ],
      "org_facet": [
        "Republican Party"
      ],
      "per_facet": [
        "Haley, Nikki R",
        "DeSantis, Ron",
        "Christie, Christopher J",
        "Ramaswamy, Vivek (1985- )",
        "Trump, Donald J",
        "Kelly, Megyn"
      ],
      "geo_facet": [],
      "media": [
        {
          "type": "image",
          "subtype": "photo",
          "caption": "The fourth Republican debate featured a smaller group of candidates after several departures from the race. The moderators pressed them more forcefully on uncomfortable questions. ",
          "copyright": "Bob Miller for The New York Times",
          "approved_for_syndication": 1,
          "media-metadata": [
            {
              "url": "https://static01.nyt.com/images/2023/12/07/multimedia/07pol-takeaways-topart-wpgv/07pol-takeaways-topart-wpgv-thumbStandard.jpg",
              "format": "Standard Thumbnail",
              "height": 75,
              "width": 75
            },
            {
              "url": "https://static01.nyt.com/images/2023/12/07/multimedia/07pol-takeaways-topart-wpgv/07pol-takeaways-topart-wpgv-mediumThreeByTwo210.jpg",
              "format": "mediumThreeByTwo210",
              "height": 140,
              "width": 210
            },
            {
              "url": "https://static01.nyt.com/images/2023/12/07/multimedia/07pol-takeaways-topart-wpgv/07pol-takeaways-topart-wpgv-mediumThreeByTwo440.jpg",
              "format": "mediumThreeByTwo440",
              "height": 293,
              "width": 440
            }
          ]
        }
      ],
      "eta_id": 0
    },
 */

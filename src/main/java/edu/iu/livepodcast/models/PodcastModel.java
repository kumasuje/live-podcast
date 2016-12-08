package edu.iu.livepodcast.models;

import org.springframework.data.annotation.Id;
import org.springframework.stereotype.Component;

/**
 * Created by Sujeet on 12/2/16.
 */

@Component
public class PodcastModel {

    @Id
    private String podcastId;

    private String podcastName;

    public String getPodcastId() {
        return podcastId;
    }

    public void setPodcastId(String podcastId) {
        this.podcastId = podcastId;
    }

    public String getPodcastName() {
        return podcastName;
    }

    public void setPodcastName(String podcastName) {
        this.podcastName = podcastName;
    }

    public String getPodcastDis() {
        return podcastDis;
    }

    public void setPodcastDis(String podcastDis) {
        this.podcastDis = podcastDis;
    }

    public String getImgLink() {
        return imgLink;
    }

    public void setImgLink(String imgLink) {
        this.imgLink = imgLink;
    }

    public String getAudioLink() {
        return audioLink;
    }

    public void setAudioLink(String audioLink) {
        this.audioLink = audioLink;
    }

    private String podcastDis;

    private String imgLink;

    private String audioLink;


}

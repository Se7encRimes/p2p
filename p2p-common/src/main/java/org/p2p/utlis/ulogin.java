package org.p2p.utlis;

/**
 * User: zyyy
 * Date: 2017/9/8
 * Time: 16:57
 */
public class ulogin {
    private int status;
    private String comments;
    private String url;

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getStatus() {

        return status;
    }

    @Override
    public String toString() {
        return "ulogin{" +
                "status=" + status +
                ", comments='" + comments + '\'' +
                ", message='" + message + '\'' +
                ", url='" + url + '\'' +
                '}';
    }

    public void setStatus(int status) {
        this.status = status;
    }
}

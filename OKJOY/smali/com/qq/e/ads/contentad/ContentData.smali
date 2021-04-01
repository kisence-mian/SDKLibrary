.class public interface abstract Lcom/qq/e/ads/contentad/ContentData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/contentad/ContentAdData;


# virtual methods
.method public abstract getContentType()Lcom/qq/e/ads/contentad/ContentType;
.end method

.method public abstract getElapseTime()Ljava/lang/String;
.end method

.method public abstract getFrom()Ljava/lang/String;
.end method

.method public abstract getImages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getPlayCount()I
.end method

.method public abstract getPostTime()J
.end method

.method public abstract getPv()J
.end method

.method public abstract getRuntime()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getcommentNum()I
.end method

.method public abstract isBigPic()Z
.end method

.method public abstract onClick(Landroid/view/View;)V
.end method

.method public abstract onExpouse(Landroid/view/View;)V
.end method

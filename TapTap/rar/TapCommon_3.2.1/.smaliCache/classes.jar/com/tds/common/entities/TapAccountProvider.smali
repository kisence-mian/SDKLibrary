.class public interface abstract Lcom/tds/common/entities/TapAccountProvider;
.super Ljava/lang/Object;
.source "TapAccountProvider.java"


# virtual methods
.method public abstract getAccessToken()Lcom/tds/common/entities/AccessToken;
.end method

.method public abstract getUserInfo()Lcom/tds/common/reactor/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/Observable<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

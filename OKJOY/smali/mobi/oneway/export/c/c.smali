.class public Lmobi/oneway/export/c/c;
.super Lmobi/oneway/export/c/b;

# interfaces
.implements Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;


# instance fields
.field private g:Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p2, p3, p4}, Lmobi/oneway/export/c/b;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V

    iput-object p1, p0, Lmobi/oneway/export/c/c;->g:Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;

    return-void
.end method

.method private e()Z
    .registers 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lmobi/oneway/export/c/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_c

    move v2, v3

    :goto_b
    return v2

    :cond_c
    iget-object v0, p0, Lmobi/oneway/export/c/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    iget-object v5, p0, Lmobi/oneway/export/c/c;->a:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v0, v5}, Lmobi/oneway/export/f/c;->a(Lmobi/oneway/export/enums/AdType;)Z

    move-result v5

    if-eqz v5, :cond_2b

    add-int/lit8 v0, v1, 0x1

    :goto_29
    move v1, v0

    goto :goto_13

    :cond_2b
    invoke-virtual {v0, v3}, Lmobi/oneway/export/f/c;->b(Z)V

    move v0, v1

    goto :goto_29

    :cond_30
    if-ne v1, v3, :cond_34

    move v2, v3

    goto :goto_b

    :cond_34
    iget-object v0, p0, Lmobi/oneway/export/c/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    invoke-virtual {v0}, Lmobi/oneway/export/f/c;->a()I

    move-result v4

    iget v5, p0, Lmobi/oneway/export/c/c;->b:I

    if-eq v4, v5, :cond_3a

    invoke-virtual {v0}, Lmobi/oneway/export/f/c;->f()Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_b

    :cond_55
    move v2, v3

    goto :goto_b
.end method

.method private f()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmobi/oneway/export/feed/IFeedAd;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lmobi/oneway/export/c/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    invoke-virtual {v0}, Lmobi/oneway/export/f/c;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_19
    return-object v0

    :cond_1a
    move-object v0, v1

    goto :goto_19
.end method


# virtual methods
.method public onAdLoad(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobi/oneway/export/feed/IFeedAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "feedAds":Ljava/util/List;, "Ljava/util/List<Lmobi/oneway/export/feed/IFeedAd;>;"
    iget-object v0, p0, Lmobi/oneway/export/c/c;->d:Lmobi/oneway/export/f/c;

    invoke-virtual {v0, p1}, Lmobi/oneway/export/f/c;->a(Ljava/util/List;)V

    iget-object v0, p0, Lmobi/oneway/export/c/c;->d:Lmobi/oneway/export/f/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/oneway/export/f/c;->b(Z)V

    iget-object v0, p0, Lmobi/oneway/export/c/c;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->ready:Lmobi/oneway/export/enums/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    invoke-direct {p0}, Lmobi/oneway/export/c/c;->e()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lmobi/oneway/export/c/c;->g:Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;

    invoke-direct {p0}, Lmobi/oneway/export/c/c;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;->onAdLoad(Ljava/util/List;)V

    :cond_22
    return-void
.end method

.method public onError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Lmobi/oneway/export/enums/OnewaySdkError;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmobi/oneway/export/c/c;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->adFail:Lmobi/oneway/export/enums/EventType;

    invoke-virtual {v0, v1, p1, p2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmobi/oneway/export/c/c;->b()V

    iget-object v0, p0, Lmobi/oneway/export/c/c;->d:Lmobi/oneway/export/f/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/oneway/export/f/c;->b(Z)V

    invoke-direct {p0}, Lmobi/oneway/export/c/c;->e()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lmobi/oneway/export/c/c;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v1, p0, Lmobi/oneway/export/c/c;->g:Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;

    invoke-interface {v1, v0}, Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;->onAdLoad(Ljava/util/List;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lmobi/oneway/export/c/c;->g:Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;

    invoke-interface {v0, p1, p2}, Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;->onError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    goto :goto_21
.end method

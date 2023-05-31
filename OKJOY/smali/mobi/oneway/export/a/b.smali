.class public Lmobi/oneway/export/a/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lmobi/oneway/export/enums/AdType;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->feed:Lmobi/oneway/export/enums/AdType;

    iput-object v0, p0, Lmobi/oneway/export/a/b;->a:Lmobi/oneway/export/enums/AdType;

    iput-object p2, p0, Lmobi/oneway/export/a/b;->b:Ljava/lang/String;

    iput-object p1, p0, Lmobi/oneway/export/a/b;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lmobi/oneway/export/a/b;->a:Lmobi/oneway/export/enums/AdType;

    invoke-static {v0}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    iget-object v4, p0, Lmobi/oneway/export/a/b;->a:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v0, v4}, Lmobi/oneway/export/f/c;->a(Lmobi/oneway/export/enums/AdType;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_22
    if-nez v0, :cond_2c

    sget-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->CAMPAIGN_NO_FILL:Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v1, "no feed ad"

    invoke-interface {p1, v0, v1}, Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;->onError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    :cond_2b
    return-void

    :cond_2c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lmobi/oneway/export/f/c;->a(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lmobi/oneway/export/f/c;->b(Z)V

    goto :goto_30

    :cond_44
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    iget-object v2, p0, Lmobi/oneway/export/a/b;->c:Landroid/content/Context;

    iget-object v3, p0, Lmobi/oneway/export/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, p1}, Lmobi/oneway/export/f/c;->a(Landroid/content/Context;Ljava/lang/String;Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;)V

    goto :goto_48

    :cond_5c
    move v0, v1

    goto :goto_22
.end method

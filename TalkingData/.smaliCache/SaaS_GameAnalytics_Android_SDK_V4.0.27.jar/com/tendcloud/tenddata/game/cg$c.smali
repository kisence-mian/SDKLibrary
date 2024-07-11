.class Lcom/tendcloud/tenddata/game/cg$c;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private bsslist:Ljava/util/List;

.field private bssmap:Ljava/util/Map;

.field private poiId:J

.field final synthetic this$0:Lcom/tendcloud/tenddata/game/cg;

.field private timestamp:I


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cg;)V
    .registers 2

    .line 472
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cg$c;->this$0:Lcom/tendcloud/tenddata/game/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cloneFingerprint()Lcom/tendcloud/tenddata/game/cg$c;
    .registers 5

    .line 518
    new-instance v0, Lcom/tendcloud/tenddata/game/cg$c;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cg$c;->this$0:Lcom/tendcloud/tenddata/game/cg;

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/game/cg$c;-><init>(Lcom/tendcloud/tenddata/game/cg;)V

    .line 519
    iget v1, p0, Lcom/tendcloud/tenddata/game/cg$c;->timestamp:I

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/cg$c;->setTimestamp(I)V

    .line 520
    iget-wide v1, p0, Lcom/tendcloud/tenddata/game/cg$c;->poiId:J

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/cg$c;->setPoiId(J)V

    .line 521
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 522
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cg$c;->bsslist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tendcloud/tenddata/game/cg$a;

    .line 523
    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/cg$a;->cloneBssEntry()Lcom/tendcloud/tenddata/game/cg$a;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    goto :goto_1c

    .line 525
    :cond_30
    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/cg$c;->setBsslist(Ljava/util/List;)V

    .line 526
    return-object v0
.end method

.method getBsslist()Ljava/util/List;
    .registers 2

    .line 498
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cg$c;->bsslist:Ljava/util/List;

    return-object v0
.end method

.method getBssmap(Z)Ljava/util/Map;
    .registers 5

    .line 506
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cg$c;->bssmap:Ljava/util/Map;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_29

    .line 507
    :cond_6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cg$c;->bssmap:Ljava/util/Map;

    .line 508
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cg$c;->bsslist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/cg$a;

    .line 509
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cg$c;->bssmap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/cg$a;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    goto :goto_13

    .line 513
    :cond_29
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cg$c;->bssmap:Ljava/util/Map;

    return-object p1
.end method

.method getPoiId()J
    .registers 3

    .line 490
    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/cg$c;->poiId:J

    return-wide v0
.end method

.method getTimestamp()I
    .registers 2

    .line 482
    iget v0, p0, Lcom/tendcloud/tenddata/game/cg$c;->timestamp:I

    return v0
.end method

.method setBsslist(Ljava/util/List;)V
    .registers 2

    .line 502
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cg$c;->bsslist:Ljava/util/List;

    .line 503
    return-void
.end method

.method setPoiId(J)V
    .registers 3

    .line 494
    iput-wide p1, p0, Lcom/tendcloud/tenddata/game/cg$c;->poiId:J

    .line 495
    return-void
.end method

.method setTimestamp(I)V
    .registers 2

    .line 486
    iput p1, p0, Lcom/tendcloud/tenddata/game/cg$c;->timestamp:I

    .line 487
    return-void
.end method

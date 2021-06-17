.class Lcom/tendcloud/tenddata/game/ay$a;
.super Lcom/tendcloud/tenddata/game/ay;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public groups:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 7

    .line 309
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/ay;-><init>(Ljava/lang/String;)V

    .line 311
    :try_start_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ay$a;->groups:Ljava/util/ArrayList;

    .line 312
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/ay$a;->content:Ljava/lang/String;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 313
    array-length v0, p1

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_27

    aget-object v2, p1, v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_29

    .line 315
    :try_start_18
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ay$a;->groups:Ljava/util/ArrayList;

    new-instance v4, Lcom/tendcloud/tenddata/game/ay$b;

    invoke-direct {v4, v2}, Lcom/tendcloud/tenddata/game/ay$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_23

    .line 317
    goto :goto_24

    .line 316
    :catchall_23
    move-exception v2

    .line 313
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 321
    :cond_27
    nop

    .line 322
    return-void

    .line 319
    :catchall_29
    move-exception p1

    .line 320
    return-void
.end method

.method public static get(I)Lcom/tendcloud/tenddata/game/ay$a;
    .registers 5

    .line 299
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/ay$a;

    const-string v1, "/proc/%d/cgroup"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/game/ay$a;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object v0

    .line 300
    :catchall_16
    move-exception p0

    .line 301
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getGroup(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/ay$b;
    .registers 8

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ay$a;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/ay$b;

    .line 327
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/ay$b;->subsystems:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 328
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_2a

    aget-object v5, v2, v4

    .line 329
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_2c

    if-eqz v5, :cond_27

    .line 330
    return-object v1

    .line 328
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 333
    :cond_2a
    goto :goto_6

    .line 336
    :cond_2b
    goto :goto_2d

    .line 334
    :catchall_2c
    move-exception p1

    .line 337
    :goto_2d
    const/4 p1, 0x0

    return-object p1
.end method

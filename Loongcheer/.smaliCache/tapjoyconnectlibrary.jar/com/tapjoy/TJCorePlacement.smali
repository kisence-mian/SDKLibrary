.class public Lcom/tapjoy/TJCorePlacement;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private A:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

.field b:Landroid/content/Context;

.field c:Lcom/tapjoy/TJPlacementData;

.field d:Ljava/lang/String;

.field e:J

.field final f:Lcom/tapjoy/internal/fx;

.field g:Lcom/tapjoy/TJAdUnit;

.field h:Z

.field i:Lcom/tapjoy/internal/hi;

.field j:Z

.field volatile k:Z

.field volatile l:Z

.field volatile m:Z

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TJPlacement;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/tapjoy/internal/fn;

.field private v:Z

.field private w:Lcom/tapjoy/internal/il;

.field private volatile x:Z

.field private y:Z

.field private z:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "placementName"    # Ljava/lang/String;
    .param p2, "placementKey"    # Ljava/lang/String;
    .param p3, "isLimited"    # Z

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->s:Ljava/util/Map;

    .line 57
    new-instance v0, Lcom/tapjoy/internal/fx;

    invoke-direct {v0}, Lcom/tapjoy/internal/fx;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fx;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->h:Z

    .line 63
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->v:Z

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/internal/il;

    .line 67
    iput-object v1, p0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hi;

    .line 75
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->x:Z

    .line 76
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    .line 77
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Z

    .line 78
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->m:Z

    .line 92
    new-instance v0, Lcom/tapjoy/TJCorePlacement$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCorePlacement$1;-><init>(Lcom/tapjoy/TJCorePlacement;)V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->z:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    .line 118
    new-instance v0, Lcom/tapjoy/TJCorePlacement$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCorePlacement$2;-><init>(Lcom/tapjoy/TJCorePlacement;)V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->A:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    .line 145
    invoke-static {}, Lcom/tapjoy/internal/b;->c()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    .line 146
    if-nez v0, :cond_40

    .line 147
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v1, "getVisibleActivity() is NULL. Activity can be explicitly set via `Tapjoy.setActivity(Activity)`"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_40
    iput-boolean p3, p0, Lcom/tapjoy/TJCorePlacement;->y:Z

    .line 152
    new-instance v0, Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->getPlacementContentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/tapjoy/TJPlacementData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    .line 153
    invoke-virtual {v0, p1}, Lcom/tapjoy/TJPlacementData;->setPlacementName(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->d:Ljava/lang/String;

    .line 159
    new-instance v0, Lcom/tapjoy/TJAdUnit;

    invoke-direct {v0}, Lcom/tapjoy/TJAdUnit;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->g:Lcom/tapjoy/TJAdUnit;

    .line 160
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->z:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnit;->setWebViewListener(Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;)V

    .line 161
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->g:Lcom/tapjoy/TJAdUnit;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->A:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnit;->setVideoListener(Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;)V

    .line 162
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;J)J
    .registers 3

    .line 45
    iput-wide p1, p0, Lcom/tapjoy/TJCorePlacement;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/internal/il;)Lcom/tapjoy/internal/il;
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/internal/il;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;)V
    .registers 1

    .line 45
    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->c()V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacement;)V
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)V
    .registers 5

    .line 45
    nop

    .line 23574
    if-eqz p1, :cond_5a

    .line 23576
    :try_start_3
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disable preload flag is set for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23828
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    .line 23576
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23578
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23579
    iget-object p1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    const-string v2, "redirect_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tapjoy/TJPlacementData;->setRedirectURL(Ljava/lang/String;)V

    .line 23580
    iget-object p1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/tapjoy/TJPlacementData;->setPreloadDisabled(Z)V

    .line 23581
    iget-object p1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p1, v1}, Lcom/tapjoy/TJPlacementData;->setHasProgressSpinner(Z)V

    .line 23583
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "redirect_url:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacementData;->getRedirectURL()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_50} :catch_51

    .line 23586
    return-void

    .line 23584
    :catch_51
    move-exception p0

    .line 23585
    new-instance p0, Lcom/tapjoy/TapjoyException;

    const-string p1, "TJPlacement request failed, malformed server response"

    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23588
    :cond_5a
    new-instance p0, Lcom/tapjoy/TapjoyException;

    const-string p1, "TJPlacement request failed due to null response"

    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;Z)Z
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/tapjoy/TJCorePlacement;->v:Z

    return p1
.end method

.method private b(Lcom/tapjoy/TJPlacement;)V
    .registers 5

    .line 900
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content dismissed for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16828
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    .line 900
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fx;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fx;->a()V

    .line 903
    if-eqz p1, :cond_2b

    .line 17066
    iget-object v0, p1, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 903
    if-eqz v0, :cond_2b

    .line 904
    nop

    .line 18066
    iget-object v0, p1, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 904
    invoke-interface {v0, p1}, Lcom/tapjoy/TJPlacementListener;->onContentDismiss(Lcom/tapjoy/TJPlacement;)V

    .line 906
    :cond_2b
    return-void
.end method

.method static synthetic b(Lcom/tapjoy/TJCorePlacement;)Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/tapjoy/TJCorePlacement;->h:Z

    return p0
.end method

.method static synthetic b(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)Z
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCorePlacement;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 6

    .line 691
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 693
    const/4 p1, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/internal/il;

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    .line 694
    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tapjoy/internal/il;->a(Ljava/net/URI;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/il$a;

    .line 696
    iget-object v1, v0, Lcom/tapjoy/internal/il$a;->a:Lcom/tapjoy/internal/hi;

    iput-object v1, p0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hi;

    .line 697
    iget-object v1, v0, Lcom/tapjoy/internal/il$a;->a:Lcom/tapjoy/internal/hi;

    invoke-virtual {v1}, Lcom/tapjoy/internal/hi;->b()V

    .line 699
    iget-object v0, v0, Lcom/tapjoy/internal/il$a;->a:Lcom/tapjoy/internal/hi;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hi;->c()Z

    move-result v0

    if-nez v0, :cond_35

    .line 700
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v1, "Failed to load fiverocks placement"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    return p1

    .line 704
    :cond_35
    nop

    .line 7718
    const/4 v0, 0x0

    .line 7719
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hi;

    instance-of v2, v1, Lcom/tapjoy/internal/hg;

    if-eqz v2, :cond_52

    .line 7720
    new-instance v0, Lcom/tapjoy/internal/fv;

    .line 7828
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    .line 7720
    nop

    .line 8661
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementType()Ljava/lang/String;

    move-result-object v2

    .line 7720
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->u:Lcom/tapjoy/internal/fn;

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/fv;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fn;)V

    goto :goto_6a

    .line 7721
    :cond_52
    instance-of v1, v1, Lcom/tapjoy/internal/gx;

    if-eqz v1, :cond_6a

    .line 7722
    new-instance v0, Lcom/tapjoy/internal/fw;

    .line 8828
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    .line 7722
    nop

    .line 9661
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementType()Ljava/lang/String;

    move-result-object v2

    .line 7722
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->u:Lcom/tapjoy/internal/fn;

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/fw;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fn;)V

    .line 7724
    :cond_6a
    :goto_6a
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fx;

    .line 10129
    iput-object v0, v1, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/fr;
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_6e} :catch_7f
    .catch Lcom/tapjoy/internal/bw; {:try_start_a .. :try_end_6e} :catch_71

    .line 713
    nop

    .line 714
    const/4 p1, 0x1

    return p1

    .line 709
    :catch_71
    move-exception v0

    .line 710
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/internal/bw;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-virtual {v0}, Lcom/tapjoy/internal/bw;->printStackTrace()V

    .line 712
    return p1

    .line 705
    :catch_7f
    move-exception v0

    .line 706
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 708
    return p1
.end method

.method static synthetic c(Lcom/tapjoy/TJCorePlacement;)Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/tapjoy/TJCorePlacement;)Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/tapjoy/TJCorePlacement;->v:Z

    return p0
.end method

.method static synthetic e(Lcom/tapjoy/TJCorePlacement;)V
    .registers 5

    .line 45
    nop

    .line 18946
    const-string v0, "SHOW"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 18947
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handle onClick for placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19828
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object p0

    .line 18947
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18948
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 18949
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/tapjoy/TJPlacementListener;->onClick(Lcom/tapjoy/TJPlacement;)V

    .line 45
    :cond_30
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .line 45
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/tapjoy/TJCorePlacement;)Ljava/util/Map;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Lcom/tapjoy/TJCorePlacement;)Ljava/lang/String;
    .registers 1

    .line 45
    nop

    .line 20828
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object p0

    .line 45
    return-object p0
.end method

.method static synthetic h(Lcom/tapjoy/TJCorePlacement;)Landroid/content/Context;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    return-object p0
.end method

.method static synthetic j(Lcom/tapjoy/TJCorePlacement;)V
    .registers 4

    .line 45
    nop

    .line 21797
    new-instance v0, Lcom/tapjoy/internal/fn;

    .line 21828
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    .line 21797
    nop

    .line 22661
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementType()Ljava/lang/String;

    move-result-object v2

    .line 21797
    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/fn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->u:Lcom/tapjoy/internal/fn;

    .line 21798
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->g:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnit;->setAdContentTracker(Lcom/tapjoy/internal/fn;)V

    .line 45
    return-void
.end method

.method static synthetic k(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/internal/fn;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->u:Lcom/tapjoy/internal/fn;

    return-object p0
.end method

.method static synthetic l(Lcom/tapjoy/TJCorePlacement;)V
    .registers 2

    .line 45
    nop

    .line 23847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Z

    .line 23848
    const-string v0, "REQUEST"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 23849
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    .line 45
    return-void
.end method

.method static synthetic m(Lcom/tapjoy/TJCorePlacement;)Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->x:Z

    return v0
.end method

.method static synthetic n(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/internal/hi;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hi;

    return-object p0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;
    .registers 7

    .line 812
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->s:Ljava/util/Map;

    monitor-enter v0

    .line 813
    :try_start_3
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->s:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/TJPlacement;

    .line 814
    if-eqz v1, :cond_2f

    .line 815
    sget-object v2, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Returning "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " placement: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :cond_2f
    monitor-exit v0

    return-object v1

    .line 818
    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p1
.end method

.method final declared-synchronized a()V
    .registers 5

    monitor-enter p0

    .line 234
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 237
    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->getPlacementContentUrl()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 240
    const-string v0, "TJPlacement is missing APP_ID"

    .line 241
    const-string v1, "TJPlacement.requestContent"

    invoke-static {v1}, Lcom/tapjoy/internal/gh;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Lcom/tapjoy/internal/gh$a;->c()V

    .line 244
    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v2, Lcom/tapjoy/TJError;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    .line 1862
    const-string v0, "REQUEST"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 1863
    invoke-virtual {p0, v0, v1, v2}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_68

    .line 245
    monitor-exit p0

    return-void

    .line 247
    :cond_39
    :try_start_39
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJPlacementData;->updateUrl(Ljava/lang/String;)V

    .line 251
    :cond_3e
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendContentRequest -- URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2828
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_66
    .catchall {:try_start_39 .. :try_end_66} :catchall_68

    .line 253
    monitor-exit p0

    return-void

    .line 233
    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/tapjoy/TJPlacement;)V
    .registers 12

    .line 854
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fx;

    .line 10828
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    .line 854
    nop

    .line 11661
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementType()Ljava/lang/String;

    move-result-object v2

    .line 854
    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->b()Ljava/lang/String;

    move-result-object v3

    .line 12025
    const/4 v4, 0x0

    iput v4, v0, Lcom/tapjoy/internal/fx;->c:I

    .line 12026
    const-string v4, "PlacementContent.funnel"

    invoke-static {v4}, Lcom/tapjoy/internal/gh;->e(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v4

    .line 12027
    invoke-virtual {v4}, Lcom/tapjoy/internal/gh$a;->a()Lcom/tapjoy/internal/gh$a;

    move-result-object v4

    .line 12028
    const-string v5, "placement"

    invoke-virtual {v4, v5, v1}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    move-result-object v4

    .line 12029
    const-string v6, "placement_type"

    invoke-virtual {v4, v6, v2}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    move-result-object v4

    .line 12030
    const-string v7, "content_type"

    invoke-virtual {v4, v7, v3}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    move-result-object v4

    iget v8, v0, Lcom/tapjoy/internal/fx;->c:I

    .line 12031
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "state"

    invoke-virtual {v4, v9, v8}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    move-result-object v4

    iput-object v4, v0, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gh$a;

    .line 12032
    iget-object v4, v0, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gh$a;

    invoke-virtual {v4}, Lcom/tapjoy/internal/gh$a;->c()V

    .line 12034
    const-string v4, "none"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 12035
    const-string v4, "PlacementContent.ready"

    invoke-static {v4}, Lcom/tapjoy/internal/gh;->e(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v4

    .line 12036
    invoke-virtual {v4}, Lcom/tapjoy/internal/gh$a;->a()Lcom/tapjoy/internal/gh$a;

    move-result-object v4

    .line 12037
    invoke-virtual {v4, v5, v1}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    move-result-object v1

    .line 12038
    invoke-virtual {v1, v6, v2}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    move-result-object v1

    .line 12039
    invoke-virtual {v1, v7, v3}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/fx;->e:Lcom/tapjoy/internal/gh$a;

    .line 855
    :cond_65
    if-eqz p1, :cond_a8

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 856
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content request delivered successfully for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12828
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    .line 856
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->isContentAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mediationAgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tapjoy/TJPlacementListener;->onRequestSuccess(Lcom/tapjoy/TJPlacement;)V

    .line 859
    :cond_a8
    return-void
.end method

.method final a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V
    .registers 8

    .line 867
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content request failed for placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13828
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 868
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Reason= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/tapjoy/TJError;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    .line 867
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 870
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object p2

    if-eqz p2, :cond_3a

    .line 871
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lcom/tapjoy/TJPlacementListener;->onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V

    .line 873
    :cond_3a
    return-void
.end method

.method final a(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V
    .registers 7

    .line 803
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->s:Ljava/util/Map;

    monitor-enter v0

    .line 804
    :try_start_3
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->s:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " placement: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tapjoy/TJPlacement;->getGUID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 257
    :try_start_1
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->x:Z

    if-eqz v0, :cond_36

    .line 258
    sget-object p1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Placement "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3828
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is already requesting content"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string p1, "TJPlacement.requestContent"

    invoke-static {p1}, Lcom/tapjoy/internal/gh;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object p1

    const-string p2, "already doing"

    .line 260
    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/gh$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lcom/tapjoy/internal/gh$a;->c()V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_13a

    .line 262
    monitor-exit p0

    return-void

    .line 266
    :cond_36
    nop

    .line 4556
    :try_start_37
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->resetPlacementRequestData()V

    .line 4559
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fx;

    .line 5123
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gh$a;

    .line 5124
    iput-object v1, v0, Lcom/tapjoy/internal/fx;->d:Lcom/tapjoy/internal/gh$a;

    .line 5125
    iput-object v1, v0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/fr;

    .line 4562
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->g:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->resetContentLoadState()V

    .line 4564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->x:Z

    .line 4565
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    .line 4566
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Z

    .line 4567
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->m:Z

    .line 4569
    iput-object v1, p0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hi;

    .line 4570
    iput-object v1, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/internal/il;

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->x:Z

    .line 272
    const-string v2, "REQUEST"

    invoke-virtual {p0, v2}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v8

    .line 274
    iget-boolean v2, p0, Lcom/tapjoy/TJCorePlacement;->y:Z

    if-nez v2, :cond_72

    .line 275
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    .line 276
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_7f

    .line 278
    :cond_72
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getLimitedGenericURLParams()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    .line 279
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getLimitedTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 282
    :goto_7f
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v3, "event_name"

    .line 5828
    iget-object v4, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    .line 282
    invoke-static {v2, v3, v4, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 283
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v3, "event_preload"

    const-string v4, "true"

    invoke-static {v2, v3, v4, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 284
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v3, "debug"

    .line 6017
    sget-boolean v4, Lcom/tapjoy/internal/gy;->a:Z

    .line 284
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v2

    .line 287
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v4, "action_id_exclusion"

    .line 6943
    iget-object v5, v2, Lcom/tapjoy/internal/hb;->b:Lcom/tapjoy/internal/hk;

    if-nez v5, :cond_af

    .line 6944
    goto :goto_ba

    .line 6945
    :cond_af
    iget-object v1, v2, Lcom/tapjoy/internal/hb;->b:Lcom/tapjoy/internal/hk;

    .line 7049
    invoke-virtual {v1}, Lcom/tapjoy/internal/hk;->b()V

    .line 7050
    iget-object v1, v1, Lcom/tapjoy/internal/hk;->b:Lcom/tapjoy/internal/n;

    invoke-virtual {v1}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object v1

    .line 287
    :goto_ba
    invoke-static {v3, v4, v1, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 289
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v2, "system_placement"

    iget-boolean v3, p0, Lcom/tapjoy/TJCorePlacement;->j:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 290
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v2, "push_id"

    iget-object v3, v8, Lcom/tapjoy/TJPlacement;->pushId:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 293
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v2, "mediation_source"

    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->n:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v2, "adapter_version"

    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->o:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 296
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getCustomParameter()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    .line 297
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v2, "cp"

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getCustomParameter()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 300
    :cond_fa
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v1, "volume"

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->getVolume(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 303
    if-eqz p2, :cond_10e

    .line 304
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 310
    :cond_10e
    new-instance v6, Lcom/tapjoy/internal/fj;

    invoke-static {}, Lcom/tapjoy/internal/gc;->b()Lcom/tapjoy/internal/ga;

    move-result-object p2

    const-string v0, "placement_request_content_retry_timeout"

    .line 7214
    invoke-virtual {p2, v0}, Lcom/tapjoy/internal/gl;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 311
    invoke-direct {v6, v0, v1}, Lcom/tapjoy/internal/fj;-><init>(J)V

    .line 312
    invoke-static {}, Lcom/tapjoy/internal/gc;->b()Lcom/tapjoy/internal/ga;

    move-result-object p2

    const-string v0, "placement_request_content_retry_backoff"

    .line 313
    invoke-virtual {p2, v0}, Lcom/tapjoy/internal/ga;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gk;

    move-result-object v9

    .line 319
    const-string p2, "TJPlacement.requestContent"

    invoke-static {p2}, Lcom/tapjoy/internal/gh;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v5

    .line 322
    new-instance p2, Lcom/tapjoy/TJCorePlacement$3;

    move-object v3, p2

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v9}, Lcom/tapjoy/TJCorePlacement$3;-><init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/internal/gh$a;Lcom/tapjoy/internal/fj;Ljava/lang/String;Lcom/tapjoy/TJPlacement;Lcom/tapjoy/internal/gk;)V

    .line 463
    invoke-virtual {p2}, Lcom/tapjoy/TJCorePlacement$3;->start()V
    :try_end_138
    .catchall {:try_start_37 .. :try_end_138} :catchall_13a

    .line 464
    monitor-exit p0

    return-void

    .line 256
    :catchall_13a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final b()Ljava/lang/String;
    .registers 2

    .line 782
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hi;

    if-eqz v0, :cond_7

    .line 783
    const-string v0, "mm"

    return-object v0

    .line 784
    :cond_7
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Z

    if-eqz v0, :cond_e

    .line 785
    const-string v0, "ad"

    return-object v0

    .line 787
    :cond_e
    const-string v0, "none"

    return-object v0
.end method

.method final c()V
    .registers 6

    .line 876
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    if-nez v0, :cond_64

    .line 877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->m:Z

    .line 879
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content is ready for placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14828
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 879
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->g:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->isPrerendered()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 881
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fx;

    const-string v2, "prerendered"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15111
    iget-object v4, v1, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gh$a;

    .line 15112
    if-eqz v4, :cond_36

    .line 15113
    invoke-virtual {v4, v2, v3}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    .line 15116
    :cond_36
    iget-object v1, v1, Lcom/tapjoy/internal/fx;->e:Lcom/tapjoy/internal/gh$a;

    .line 15117
    if-eqz v1, :cond_3d

    .line 15118
    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    .line 883
    :cond_3d
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fx;

    .line 16044
    iget-object v2, v1, Lcom/tapjoy/internal/fx;->e:Lcom/tapjoy/internal/gh$a;

    .line 16045
    if-eqz v2, :cond_4d

    .line 16046
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/tapjoy/internal/fx;->e:Lcom/tapjoy/internal/gh$a;

    .line 16047
    invoke-virtual {v2}, Lcom/tapjoy/internal/gh$a;->b()Lcom/tapjoy/internal/gh$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/gh$a;->c()V

    .line 884
    :cond_4d
    const-string v1, "REQUEST"

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v1

    .line 885
    if-eqz v1, :cond_64

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 886
    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tapjoy/TJPlacementListener;->onContentReady(Lcom/tapjoy/TJPlacement;)V

    .line 887
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    .line 890
    :cond_64
    return-void
.end method

.method final d()V
    .registers 3

    .line 893
    const-string v0, "SHOW"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 894
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 895
    invoke-direct {p0, v0}, Lcom/tapjoy/TJCorePlacement;->b(Lcom/tapjoy/TJPlacement;)V

    .line 897
    :cond_11
    return-void
.end method

.method final e()Ljava/lang/String;
    .registers 2

    .line 964
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->y:Z

    if-nez v0, :cond_9

    .line 965
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getAppID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 967
    :cond_9
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getLimitedAppID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnit()Lcom/tapjoy/TJAdUnit;
    .registers 2

    .line 739
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->g:Lcom/tapjoy/TJAdUnit;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 731
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getPlacementContentUrl()Ljava/lang/String;
    .registers 4

    .line 755
    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->e()Ljava/lang/String;

    move-result-object v0

    .line 758
    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "v1/apps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/content?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 763
    :cond_2c
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v1, "Placement content URL cannot be generated for null app ID"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v0, ""

    return-object v0
.end method

.method public getPlacementData()Lcom/tapjoy/TJPlacementData;
    .registers 2

    .line 743
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    return-object v0
.end method

.method public isContentAvailable()Z
    .registers 2

    .line 751
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Z

    return v0
.end method

.method public isContentReady()Z
    .registers 2

    .line 747
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->m:Z

    return v0
.end method

.method public isLimited()Z
    .registers 2

    .line 959
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->y:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "activityContext"    # Landroid/content/Context;

    .line 735
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    .line 736
    return-void
.end method

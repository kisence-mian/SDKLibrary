.class public Lcom/kwad/sdk/core/config/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/config/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static A:Lcom/kwad/sdk/core/config/item/e;

.field public static B:Lcom/kwad/sdk/core/config/item/e;

.field public static C:Lcom/kwad/sdk/core/config/item/e;

.field public static D:Lcom/kwad/sdk/core/config/item/e;

.field public static E:Lcom/kwad/sdk/core/config/item/e;

.field public static F:Lcom/kwad/sdk/core/config/item/e;

.field public static G:Lcom/kwad/sdk/core/config/item/e;

.field public static H:Lcom/kwad/sdk/core/config/item/e;

.field public static I:Lcom/kwad/sdk/core/config/item/e;

.field public static J:Lcom/kwad/sdk/core/config/item/e;

.field public static K:Lcom/kwad/sdk/core/config/item/e;

.field public static L:Lcom/kwad/sdk/core/config/item/e;

.field public static M:Lcom/kwad/sdk/core/config/item/e;

.field public static N:Lcom/kwad/sdk/core/config/item/e;

.field public static O:Lcom/kwad/sdk/core/config/item/e;

.field public static P:Lcom/kwad/sdk/core/config/item/g;

.field public static Q:Lcom/kwad/sdk/core/config/item/c;

.field public static R:Lcom/kwad/sdk/core/config/item/c;

.field public static S:Lcom/kwad/sdk/core/config/item/c;

.field public static T:Lcom/kwad/sdk/core/config/item/d;

.field public static U:Lcom/kwad/sdk/core/config/item/k;

.field public static V:Lcom/kwad/sdk/core/config/item/k;

.field public static W:Lcom/kwad/sdk/core/config/item/f;

.field public static X:Lcom/kwad/sdk/core/config/item/l;

.field public static Y:Lcom/kwad/sdk/core/config/item/l;

.field public static Z:Lcom/kwad/sdk/core/config/item/TipsConfigItem;

.field public static a:Lcom/kwad/sdk/core/config/item/e;

.field public static aa:Lcom/kwad/sdk/core/config/item/h;

.field public static ab:Lcom/kwad/sdk/core/config/item/b;

.field public static ac:Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;

.field public static ad:Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem;

.field public static ae:Lcom/kwad/sdk/core/config/item/i;

.field public static af:Lcom/kwad/sdk/core/config/item/j;

.field public static ag:Lcom/kwad/sdk/core/config/item/e;

.field public static ah:Lcom/kwad/sdk/core/config/item/e;

.field public static ai:Lcom/kwad/sdk/core/config/item/e;

.field public static aj:Lcom/kwad/sdk/core/config/item/e;

.field public static b:Lcom/kwad/sdk/core/config/item/e;

.field public static c:Lcom/kwad/sdk/core/config/item/e;

.field public static d:Lcom/kwad/sdk/core/config/item/e;

.field public static e:Lcom/kwad/sdk/core/config/item/e;

.field public static f:Lcom/kwad/sdk/core/config/item/e;

.field public static g:Lcom/kwad/sdk/core/config/item/e;

.field public static h:Lcom/kwad/sdk/core/config/item/e;

.field public static i:Lcom/kwad/sdk/core/config/item/e;

.field public static j:Lcom/kwad/sdk/core/config/item/e;

.field public static k:Lcom/kwad/sdk/core/config/item/e;

.field public static l:Lcom/kwad/sdk/core/config/item/e;

.field public static m:Lcom/kwad/sdk/core/config/item/e;

.field public static n:Lcom/kwad/sdk/core/config/item/e;

.field public static o:Lcom/kwad/sdk/core/config/item/e;

.field public static p:Lcom/kwad/sdk/core/config/item/e;

.field public static q:Lcom/kwad/sdk/core/config/item/e;

.field public static r:Lcom/kwad/sdk/core/config/item/e;

.field public static s:Lcom/kwad/sdk/core/config/item/e;

.field public static t:Lcom/kwad/sdk/core/config/item/e;

.field public static u:Lcom/kwad/sdk/core/config/item/e;

.field public static v:Lcom/kwad/sdk/core/config/item/e;

.field public static w:Lcom/kwad/sdk/core/config/item/e;

.field public static x:Lcom/kwad/sdk/core/config/item/e;

.field public static y:Lcom/kwad/sdk/core/config/item/e;

.field public static z:Lcom/kwad/sdk/core/config/item/e;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "toolbarSwitch"

    invoke-direct {v0, v3, v2}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->a:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v3, "likeButtonSwitch"

    invoke-direct {v0, v3, v2}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->b:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v3, "moreButtonSwitch"

    invoke-direct {v0, v3, v2}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->c:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v3, "commentButtonSwitch"

    invoke-direct {v0, v3, v2}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->d:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const/16 v3, 0x3b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "seekBarSwitch"

    invoke-direct {v0, v4, v3}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->e:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "videoCacheSwitch"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->f:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "trendDynamicEffect"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->g:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const/16 v5, 0x5a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "homePlaySpeedTime"

    invoke-direct {v0, v6, v5}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->h:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "homePlayCompleteType"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->i:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "replayTubeEpisode"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->j:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "batchReportCatchLimit"

    invoke-direct {v0, v6, v5}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->k:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "preloadSwitch"

    invoke-direct {v0, v5, v2}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->l:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "rewardTopBarNewStyle"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->m:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "convertEnableStrongPatch"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->n:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "liveSwitch"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->o:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "showAdComment"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->p:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "authorProfileSwitch"

    invoke-direct {v0, v5, v2}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->q:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "exceptionCollectorSwitch"

    invoke-direct {v0, v5, v2}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->r:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "mediaPlayerLogReport"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->s:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "slideLeftSwitch"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->t:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "tabRefresh"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->u:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "backRefreshSwitch"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->v:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "mobileNetTipSwitch"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->w:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "relatedSwitch"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->x:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "closeDelaySeconds"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->y:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "rewardFullClickSwitch"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->z:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "didCopySwitch"

    invoke-direct {v0, v5, v2}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->A:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "slideCoverSwitch"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->B:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "profileAdSwitch"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->C:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "entrySwipeJumpIndex"

    invoke-direct {v0, v6, v5}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->D:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "profileGuideSwitch"

    invoke-direct {v0, v5, v2}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->E:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "mediaPlayerActionSwitch"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->F:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "showBlurBackground"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->G:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "enableHodor"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->H:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "preloadVideoCache"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->I:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "speedLimitSwitch"

    invoke-direct {v0, v5, v2}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->J:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "remindInstallActivateSwitch"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->K:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "speedLimitThreshold"

    invoke-direct {v0, v6, v5}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->L:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const/16 v5, 0x1388

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "splashTimeOutMilliSecond"

    invoke-direct {v0, v6, v5}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->M:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "middleEndcardShowTime"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->N:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v5, "guideStyle"

    invoke-direct {v0, v5, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->O:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/g;

    const-wide/16 v5, 0x1388

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "guideShowTime"

    invoke-direct {v0, v6, v5}, Lcom/kwad/sdk/core/config/item/g;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->P:Lcom/kwad/sdk/core/config/item/g;

    new-instance v0, Lcom/kwad/sdk/core/config/item/c;

    const-string v5, "playerEnable"

    invoke-direct {v0, v5, v3}, Lcom/kwad/sdk/core/config/item/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->Q:Lcom/kwad/sdk/core/config/item/c;

    new-instance v0, Lcom/kwad/sdk/core/config/item/c;

    const-string v5, "dynamicEnable"

    invoke-direct {v0, v5, v3}, Lcom/kwad/sdk/core/config/item/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->R:Lcom/kwad/sdk/core/config/item/c;

    new-instance v0, Lcom/kwad/sdk/core/config/item/c;

    const-string v5, "emotionEnable"

    invoke-direct {v0, v5, v1}, Lcom/kwad/sdk/core/config/item/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->S:Lcom/kwad/sdk/core/config/item/c;

    new-instance v0, Lcom/kwad/sdk/core/config/item/d;

    const-string v1, "homePlaySpeed"

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcom/kwad/sdk/core/config/item/d;-><init>(Ljava/lang/String;F)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->T:Lcom/kwad/sdk/core/config/item/d;

    new-instance v0, Lcom/kwad/sdk/core/config/item/k;

    const-string v1, "webpSoUrlV7a"

    const-string v5, ""

    invoke-direct {v0, v1, v5}, Lcom/kwad/sdk/core/config/item/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->U:Lcom/kwad/sdk/core/config/item/k;

    new-instance v0, Lcom/kwad/sdk/core/config/item/k;

    const-string v1, "webpSoUrlV8a"

    invoke-direct {v0, v1, v5}, Lcom/kwad/sdk/core/config/item/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->V:Lcom/kwad/sdk/core/config/item/k;

    new-instance v0, Lcom/kwad/sdk/core/config/item/f;

    const-string v1, "playerConfig"

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6}, Lcom/kwad/sdk/core/config/item/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->W:Lcom/kwad/sdk/core/config/item/f;

    new-instance v0, Lcom/kwad/sdk/core/config/item/l;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const-string v6, "pkgNameList"

    invoke-direct {v0, v6, v1}, Lcom/kwad/sdk/core/config/item/l;-><init>(Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->X:Lcom/kwad/sdk/core/config/item/l;

    new-instance v0, Lcom/kwad/sdk/core/config/item/l;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "hostList"

    invoke-direct {v0, v3, v1}, Lcom/kwad/sdk/core/config/item/l;-><init>(Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->Y:Lcom/kwad/sdk/core/config/item/l;

    new-instance v0, Lcom/kwad/sdk/core/config/item/TipsConfigItem;

    invoke-direct {v0}, Lcom/kwad/sdk/core/config/item/TipsConfigItem;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->Z:Lcom/kwad/sdk/core/config/item/TipsConfigItem;

    new-instance v0, Lcom/kwad/sdk/core/config/item/h;

    invoke-direct {v0}, Lcom/kwad/sdk/core/config/item/h;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->aa:Lcom/kwad/sdk/core/config/item/h;

    new-instance v0, Lcom/kwad/sdk/core/config/item/b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/config/item/b;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->ab:Lcom/kwad/sdk/core/config/item/b;

    new-instance v0, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;

    invoke-direct {v0}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->ac:Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;

    new-instance v0, Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem;

    invoke-direct {v0}, Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->ad:Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem;

    new-instance v0, Lcom/kwad/sdk/core/config/item/i;

    const-string v1, "realtimeReportActions"

    invoke-direct {v0, v1, v5}, Lcom/kwad/sdk/core/config/item/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->ae:Lcom/kwad/sdk/core/config/item/i;

    new-instance v0, Lcom/kwad/sdk/core/config/item/j;

    invoke-direct {v0}, Lcom/kwad/sdk/core/config/item/j;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->af:Lcom/kwad/sdk/core/config/item/j;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "rewardAdVideoPreCacheSize"

    invoke-direct {v0, v3, v1}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->ag:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v1, "playableCloseSeconds"

    invoke-direct {v0, v1, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->ah:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v1, "playableAutoPlayEnable"

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->ai:Lcom/kwad/sdk/core/config/item/e;

    new-instance v0, Lcom/kwad/sdk/core/config/item/e;

    const-string v1, "formAdLeftSlideSwitch"

    invoke-direct {v0, v1, v4}, Lcom/kwad/sdk/core/config/item/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/kwad/sdk/core/config/c$a;->aj:Lcom/kwad/sdk/core/config/item/e;

    return-void
.end method

.method public static a()V
    .registers 0

    return-void
.end method

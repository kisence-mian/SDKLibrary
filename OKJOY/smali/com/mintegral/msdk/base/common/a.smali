.class public final Lcom/mintegral/msdk/base/common/a;
.super Ljava/lang/Object;
.source "CommonConst.java"


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Z

.field public static s:Z

.field public static t:Z

.field public static u:Z

.field public static v:Ljava/lang/String;

.field public static w:I

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 7
    const-string v0, "mintegral"

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->a:Ljava/lang/String;

    .line 9
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->b:Ljava/lang/String;

    .line 11
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->c:Ljava/lang/String;

    .line 13
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->d:Ljava/lang/String;

    .line 15
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->e:Ljava/lang/String;

    .line 17
    const-string v0, "https://analytics.rayjump.com"

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->f:Ljava/lang/String;

    .line 19
    const-string v0, "https://net.rayjump.com"

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->g:Ljava/lang/String;

    .line 20
    const-string v0, "https://hb.rayjump.com"

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->h:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mintegral/msdk/base/common/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/load"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->i:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mintegral/msdk/base/common/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->j:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mintegral/msdk/base/common/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/openapi/ad/v3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->k:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mintegral/msdk/base/common/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/openapi/ad/v4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->l:Ljava/lang/String;

    .line 29
    const-string v0, "https://setting.rayjump.com"

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->m:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mintegral/msdk/base/common/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/setting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->n:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mintegral/msdk/base/common/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sdk/customid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->o:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mintegral/msdk/base/common/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/rewardsetting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->p:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mintegral/msdk/base/common/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mapping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->q:Ljava/lang/String;

    .line 251
    sput-boolean v2, Lcom/mintegral/msdk/base/common/a;->r:Z

    .line 253
    sput-boolean v2, Lcom/mintegral/msdk/base/common/a;->s:Z

    .line 255
    sput-boolean v2, Lcom/mintegral/msdk/base/common/a;->t:Z

    .line 258
    sput-boolean v2, Lcom/mintegral/msdk/base/common/a;->u:Z

    .line 260
    const-string v0, "2"

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->v:Ljava/lang/String;

    .line 262
    const/16 v0, 0x8

    sput v0, Lcom/mintegral/msdk/base/common/a;->w:I

    .line 265
    const-string v0, "click_x"

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->x:Ljava/lang/String;

    .line 266
    const-string v0, "click_y"

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->y:Ljava/lang/String;

    .line 267
    const-string v0, "cta_click_info"

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->z:Ljava/lang/String;

    .line 275
    const-string v0, "click_senario"

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->A:Ljava/lang/String;

    .line 276
    const-string v0, "click_ori"

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->B:Ljava/lang/String;

    .line 277
    const-string v0, "click_scale"

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->C:Ljava/lang/String;

    .line 283
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->D:Ljava/lang/String;

    .line 284
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->E:Ljava/lang/String;

    return-void
.end method

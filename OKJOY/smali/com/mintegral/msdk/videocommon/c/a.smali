.class public Lcom/mintegral/msdk/videocommon/c/a;
.super Ljava/lang/Object;
.source "RewardSettingController.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/mintegral/msdk/videocommon/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/videocommon/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/mintegral/msdk/videocommon/c/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 30
    new-instance v0, Lcom/mintegral/msdk/videocommon/c/b;

    invoke-direct {v0, p1}, Lcom/mintegral/msdk/videocommon/c/b;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v1, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 32
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->p:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/videocommon/c/a$1;

    invoke-direct {v3, p0, p2}, Lcom/mintegral/msdk/videocommon/c/a$1;-><init>(Lcom/mintegral/msdk/videocommon/c/a;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/mintegral/msdk/videocommon/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;

    .line 53
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/c/c;)V
    .registers 11

    .prologue
    .line 61
    new-instance v0, Lcom/mintegral/msdk/videocommon/c/b;

    invoke-direct {v0, p1}, Lcom/mintegral/msdk/videocommon/c/b;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v1, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 63
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "unit_ids"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->p:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/videocommon/c/a$2;

    invoke-direct {v3, p0, p2, p4, p5}, Lcom/mintegral/msdk/videocommon/c/a$2;-><init>(Lcom/mintegral/msdk/videocommon/c/a;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/c/c;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/mintegral/msdk/videocommon/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;

    .line 94
    return-void
.end method

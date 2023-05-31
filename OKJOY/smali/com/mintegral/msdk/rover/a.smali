.class public final Lcom/mintegral/msdk/rover/a;
.super Ljava/lang/Object;
.source "RoverConstans.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    const-string v0, "https://detect.rayjump.com/mapi/find"

    sput-object v0, Lcom/mintegral/msdk/rover/a;->a:Ljava/lang/String;

    .line 6
    const-string v0, "https://detect.rayjump.com/mapi/result"

    sput-object v0, Lcom/mintegral/msdk/rover/a;->b:Ljava/lang/String;

    .line 7
    const/4 v0, 0x1

    sput v0, Lcom/mintegral/msdk/rover/a;->c:I

    .line 8
    const/4 v0, 0x2

    sput v0, Lcom/mintegral/msdk/rover/a;->d:I

    .line 9
    const v0, 0x1499700

    sput v0, Lcom/mintegral/msdk/rover/a;->e:I

    .line 10
    const-string v0, "rover_interval_time"

    sput-object v0, Lcom/mintegral/msdk/rover/a;->f:Ljava/lang/String;

    return-void
.end method

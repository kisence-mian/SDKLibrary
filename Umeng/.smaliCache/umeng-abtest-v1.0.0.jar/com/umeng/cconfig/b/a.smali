.class public final Lcom/umeng/cconfig/b/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;


# instance fields
.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/Integer;

.field k:Ljava/lang/Integer;

.field l:Ljava/lang/Long;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "appkey"

    sput-object v0, Lcom/umeng/cconfig/b/a;->a:Ljava/lang/String;

    const-string v0, "umid"

    sput-object v0, Lcom/umeng/cconfig/b/a;->b:Ljava/lang/String;

    const-string v0, "expId"

    sput-object v0, Lcom/umeng/cconfig/b/a;->c:Ljava/lang/String;

    const-string v0, "groupId"

    sput-object v0, Lcom/umeng/cconfig/b/a;->d:Ljava/lang/String;

    const-string v0, "clientTs"

    sput-object v0, Lcom/umeng/cconfig/b/a;->e:Ljava/lang/String;

    const-string v0, "key"

    sput-object v0, Lcom/umeng/cconfig/b/a;->f:Ljava/lang/String;

    const-string v0, "value"

    sput-object v0, Lcom/umeng/cconfig/b/a;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/efs/sdk/base/http/HttpEnv$SingletonHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/http/HttpEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/efs/sdk/base/http/HttpEnv;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/efs/sdk/base/http/HttpEnv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/efs/sdk/base/http/HttpEnv;-><init>(Lcom/efs/sdk/base/http/HttpEnv$1;)V

    sput-object v0, Lcom/efs/sdk/base/http/HttpEnv$SingletonHolder;->INSTANCE:Lcom/efs/sdk/base/http/HttpEnv;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/efs/sdk/base/http/HttpEnv;
    .registers 1

    .line 34
    sget-object v0, Lcom/efs/sdk/base/http/HttpEnv$SingletonHolder;->INSTANCE:Lcom/efs/sdk/base/http/HttpEnv;

    return-object v0
.end method

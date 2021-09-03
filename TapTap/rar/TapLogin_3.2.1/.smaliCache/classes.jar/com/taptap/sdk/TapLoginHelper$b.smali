.class Lcom/taptap/sdk/TapLoginHelper$b;
.super Ljava/lang/Object;
.source "TapLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/TapLoginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/taptap/sdk/TapLoginHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/taptap/sdk/TapLoginHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/TapLoginHelper;-><init>(Lcom/taptap/sdk/TapLoginHelper$a;)V

    sput-object v0, Lcom/taptap/sdk/TapLoginHelper$b;->a:Lcom/taptap/sdk/TapLoginHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/taptap/sdk/TapLoginHelper;
    .registers 1

    .line 1
    sget-object v0, Lcom/taptap/sdk/TapLoginHelper$b;->a:Lcom/taptap/sdk/TapLoginHelper;

    return-object v0
.end method

.class Lcom/umeng/commonsdk/internal/utils/b$a;
.super Ljava/lang/Object;
.source "BaseStationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/internal/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/commonsdk/internal/utils/b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 44
    new-instance v0, Lcom/umeng/commonsdk/internal/utils/b;

    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/b;->d()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/umeng/commonsdk/internal/utils/b;-><init>(Landroid/content/Context;Lcom/umeng/commonsdk/internal/utils/b$1;)V

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/b$a;->a:Lcom/umeng/commonsdk/internal/utils/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/commonsdk/internal/utils/b;
    .registers 1

    .line 43
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/b$a;->a:Lcom/umeng/commonsdk/internal/utils/b;

    return-object v0
.end method

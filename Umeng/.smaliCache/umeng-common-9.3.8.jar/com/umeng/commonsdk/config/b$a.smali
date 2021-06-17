.class Lcom/umeng/commonsdk/config/b$a;
.super Ljava/lang/Object;
.source "CollectController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/config/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/commonsdk/config/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/umeng/commonsdk/config/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/config/b;-><init>(Lcom/umeng/commonsdk/config/b$1;)V

    sput-object v0, Lcom/umeng/commonsdk/config/b$a;->a:Lcom/umeng/commonsdk/config/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/commonsdk/config/b;
    .registers 1

    .line 21
    sget-object v0, Lcom/umeng/commonsdk/config/b$a;->a:Lcom/umeng/commonsdk/config/b;

    return-object v0
.end method

.class Lcom/umeng/commonsdk/statistics/proto/d$b;
.super Ljava/lang/Object;
.source "Imprint.java"

# interfaces
.implements Lcom/umeng/analytics/pro/by;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/d$1;)V
    .registers 2

    .line 380
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/statistics/proto/d$a;
    .registers 3

    .line 383
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/proto/d$a;-><init>(Lcom/umeng/commonsdk/statistics/proto/d$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/analytics/pro/bx;
    .registers 2

    .line 380
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/d$b;->a()Lcom/umeng/commonsdk/statistics/proto/d$a;

    move-result-object v0

    return-object v0
.end method

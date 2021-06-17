.class Lcom/umeng/commonsdk/statistics/proto/b$b;
.super Ljava/lang/Object;
.source "IdSnapshot.java"

# interfaces
.implements Lcom/umeng/analytics/pro/by;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/b$1;)V
    .registers 2

    .line 344
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/statistics/proto/b$a;
    .registers 3

    .line 347
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/proto/b$a;-><init>(Lcom/umeng/commonsdk/statistics/proto/b$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/analytics/pro/bx;
    .registers 2

    .line 344
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/b$b;->a()Lcom/umeng/commonsdk/statistics/proto/b$a;

    move-result-object v0

    return-object v0
.end method

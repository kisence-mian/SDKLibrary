.class Lcom/umeng/analytics/pro/aj$d;
.super Ljava/lang/Object;
.source "UMEnvelope.java"

# interfaces
.implements Lcom/umeng/analytics/pro/by;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/aj$1;)V
    .registers 2

    .line 903
    invoke-direct {p0}, Lcom/umeng/analytics/pro/aj$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/pro/aj$c;
    .registers 3

    .line 906
    new-instance v0, Lcom/umeng/analytics/pro/aj$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/aj$c;-><init>(Lcom/umeng/analytics/pro/aj$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/analytics/pro/bx;
    .registers 2

    .line 903
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aj$d;->a()Lcom/umeng/analytics/pro/aj$c;

    move-result-object v0

    return-object v0
.end method

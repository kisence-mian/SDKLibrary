.class Lcom/bytedance/embedapplog/a/k$a;
.super Lcom/bytedance/embedapplog/d/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/bytedance/embedapplog/d/j;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/embedapplog/a/k$1;)V
    .registers 2

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/bytedance/embedapplog/a/k$a;-><init>()V

    return-void
.end method

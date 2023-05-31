.class final Lcom/bytedance/sdk/a/b/a/e/k$a;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:[Lcom/bytedance/sdk/a/b/a/e/k$a;

.field final b:I

.field final c:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/bytedance/sdk/a/b/a/e/k$a;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/k$a;->a:[Lcom/bytedance/sdk/a/b/a/e/k$a;

    .line 213
    iput v1, p0, Lcom/bytedance/sdk/a/b/a/e/k$a;->b:I

    .line 214
    iput v1, p0, Lcom/bytedance/sdk/a/b/a/e/k$a;->c:I

    .line 215
    return-void
.end method

.method constructor <init>(II)V
    .registers 4

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/k$a;->a:[Lcom/bytedance/sdk/a/b/a/e/k$a;

    .line 225
    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/k$a;->b:I

    .line 226
    and-int/lit8 v0, p2, 0x7

    .line 227
    if-nez v0, :cond_e

    const/16 v0, 0x8

    :cond_e
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/k$a;->c:I

    .line 228
    return-void
.end method

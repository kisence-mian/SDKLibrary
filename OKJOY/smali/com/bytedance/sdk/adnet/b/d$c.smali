.class public Lcom/bytedance/sdk/adnet/b/d$c;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/adnet/b/d;

.field private b:Landroid/graphics/Bitmap;

.field private final c:Lcom/bytedance/sdk/adnet/b/d$d;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/b/d;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;)V
    .registers 6

    .prologue
    .line 418
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$c;->a:Lcom/bytedance/sdk/adnet/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/d$c;->b:Landroid/graphics/Bitmap;

    .line 420
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/b/d$c;->e:Ljava/lang/String;

    .line 421
    iput-object p4, p0, Lcom/bytedance/sdk/adnet/b/d$c;->d:Ljava/lang/String;

    .line 422
    iput-object p5, p0, Lcom/bytedance/sdk/adnet/b/d$c;->c:Lcom/bytedance/sdk/adnet/b/d$d;

    .line 423
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/b/d$c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 391
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$c;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/b/d$c;)Lcom/bytedance/sdk/adnet/b/d$d;
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$c;->c:Lcom/bytedance/sdk/adnet/b/d$d;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$c;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

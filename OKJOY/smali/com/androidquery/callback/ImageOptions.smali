.class public Lcom/androidquery/callback/ImageOptions;
.super Ljava/lang/Object;
.source "ImageOptions.java"


# instance fields
.field public anchor:F

.field public animation:I

.field public fallback:I

.field public fileCache:Z

.field public memCache:Z

.field public policy:I

.field public preset:Landroid/graphics/Bitmap;

.field public ratio:F

.field public round:I

.field public targetWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean v0, p0, Lcom/androidquery/callback/ImageOptions;->memCache:Z

    .line 10
    iput-boolean v0, p0, Lcom/androidquery/callback/ImageOptions;->fileCache:Z

    .line 19
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/androidquery/callback/ImageOptions;->anchor:F

    .line 7
    return-void
.end method

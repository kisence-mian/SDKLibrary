.class final Lcom/tapjoy/internal/ij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/ie$a;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 8
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)[B
    .registers 2

    .line 16
    new-array p1, p1, [B

    return-object p1
.end method

.method public final b(I)[I
    .registers 2

    .line 24
    new-array p1, p1, [I

    return-object p1
.end method

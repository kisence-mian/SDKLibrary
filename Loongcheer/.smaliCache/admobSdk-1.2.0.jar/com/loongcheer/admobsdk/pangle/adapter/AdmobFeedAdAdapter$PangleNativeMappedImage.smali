.class public Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeMappedImage;
.super Lcom/google/android/gms/ads/formats/NativeAd$Image;
.source "AdmobFeedAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PangleNativeMappedImage"
.end annotation


# instance fields
.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private final imageUri:Landroid/net/Uri;

.field private final scale:D

.field final synthetic this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;


# direct methods
.method private constructor <init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V
    .registers 6
    .param p1, "this$0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "imageUri"    # Landroid/net/Uri;
    .param p4, "scale"    # D

    .line 311
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeMappedImage;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;-><init>()V

    .line 312
    iput-object p2, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeMappedImage;->drawable:Landroid/graphics/drawable/Drawable;

    .line 313
    iput-object p3, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeMappedImage;->imageUri:Landroid/net/Uri;

    .line 314
    iput-wide p4, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeMappedImage;->scale:D

    .line 315
    return-void
.end method

.method synthetic constructor <init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DLcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;)V
    .registers 7
    .param p1, "x0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;
    .param p2, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x2"    # Landroid/net/Uri;
    .param p4, "x3"    # D
    .param p6, "x4"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$1;

    .line 305
    invoke-direct/range {p0 .. p5}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeMappedImage;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeMappedImage;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getScale()D
    .registers 3

    .line 329
    iget-wide v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeMappedImage;->scale:D

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeMappedImage;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

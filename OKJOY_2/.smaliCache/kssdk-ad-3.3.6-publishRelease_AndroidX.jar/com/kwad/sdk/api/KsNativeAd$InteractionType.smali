.class public interface abstract annotation Lcom/kwad/sdk/api/KsNativeAd$InteractionType;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/KsNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "InteractionType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DOWNLOAD:I = 0x1

.field public static final H5:I = 0x2

.field public static final UNKNOWN:I

.class Lcom/okjoy_2/OkjoySDK$1;
.super Ljava/lang/Object;
.source "OkjoySDK.java"

# interfaces
.implements Lcom/qiyukf/unicorn/api/UnicornImageLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy_2/OkjoySDK;->OnApplicationCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/okjoy_2/OkjoySDK;


# direct methods
.method constructor <init>(Lcom/okjoy_2/OkjoySDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/okjoy_2/OkjoySDK;

    .line 95
    iput-object p1, p0, Lcom/okjoy_2/OkjoySDK$1;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadImage(Ljava/lang/String;IILcom/qiyukf/unicorn/api/ImageLoaderListener;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "imageLoaderListener"    # Lcom/qiyukf/unicorn/api/ImageLoaderListener;

    .line 105
    return-void
.end method

.method public loadImageSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

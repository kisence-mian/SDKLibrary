.class Lcom/androidquery/util/WebImage$1;
.super Ljava/lang/Object;
.source "WebImage.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidquery/util/WebImage;->delaySetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/util/WebImage;


# direct methods
.method constructor <init>(Lcom/androidquery/util/WebImage;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androidquery/util/WebImage$1;->this$0:Lcom/androidquery/util/WebImage;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/androidquery/util/WebImage$1;->this$0:Lcom/androidquery/util/WebImage;

    # getter for: Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/androidquery/util/WebImage;->access$0(Lcom/androidquery/util/WebImage;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 131
    iget-object v0, p0, Lcom/androidquery/util/WebImage$1;->this$0:Lcom/androidquery/util/WebImage;

    # invokes: Lcom/androidquery/util/WebImage;->setup()V
    invoke-static {v0}, Lcom/androidquery/util/WebImage;->access$1(Lcom/androidquery/util/WebImage;)V

    .line 132
    return-void
.end method

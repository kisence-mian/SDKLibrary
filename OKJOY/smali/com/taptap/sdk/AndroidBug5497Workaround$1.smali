.class Lcom/taptap/sdk/AndroidBug5497Workaround$1;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/AndroidBug5497Workaround;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/AndroidBug5497Workaround;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/sdk/AndroidBug5497Workaround;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/taptap/sdk/AndroidBug5497Workaround$1;->this$0:Lcom/taptap/sdk/AndroidBug5497Workaround;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/taptap/sdk/AndroidBug5497Workaround$1;->this$0:Lcom/taptap/sdk/AndroidBug5497Workaround;

    # invokes: Lcom/taptap/sdk/AndroidBug5497Workaround;->possiblyResizeChildOfContent()V
    invoke-static {v0}, Lcom/taptap/sdk/AndroidBug5497Workaround;->access$000(Lcom/taptap/sdk/AndroidBug5497Workaround;)V

    .line 25
    return-void
.end method

.class public Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$1;->this$0:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$1;->this$0:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    # getter for: Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->onListener:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$OkJoyAgeFloatWindowViewOnListener;
    invoke-static {p1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->access$000(Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;)Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$OkJoyAgeFloatWindowViewOnListener;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$1;->this$0:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    # getter for: Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->onListener:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$OkJoyAgeFloatWindowViewOnListener;
    invoke-static {p1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->access$000(Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;)Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$OkJoyAgeFloatWindowViewOnListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$OkJoyAgeFloatWindowViewOnListener;->onClick()V

    :cond_11
    return-void
.end method

.class Lcom/sigmob/sdk/mraid/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/h;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;Lcom/sigmob/sdk/mraid/d;Lcom/sigmob/sdk/mraid/d;Lcom/sigmob/sdk/mraid/l;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

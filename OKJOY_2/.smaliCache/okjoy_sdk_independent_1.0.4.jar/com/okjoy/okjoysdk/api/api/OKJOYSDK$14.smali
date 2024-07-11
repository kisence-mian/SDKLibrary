.class public final Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->showLoginBanner(Landroid/app/Activity;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$dialog:Lokjoy/t/b;


# direct methods
.method public constructor <init>(Lokjoy/t/b;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$14;->val$dialog:Lokjoy/t/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$14;->val$dialog:Lokjoy/t/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$14;->val$dialog:Lokjoy/t/b;

    invoke-virtual {v0}, Lokjoy/t/b;->cancel()V

    :cond_d
    return-void
.end method

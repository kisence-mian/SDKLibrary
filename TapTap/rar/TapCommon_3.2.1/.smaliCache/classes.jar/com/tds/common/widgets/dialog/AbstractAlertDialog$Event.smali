.class public Lcom/tds/common/widgets/dialog/AbstractAlertDialog$Event;
.super Ljava/lang/Object;
.source "AbstractAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/widgets/dialog/AbstractAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field listener:Landroid/view/View$OnClickListener;

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/tds/common/widgets/dialog/AbstractAlertDialog$Event;->text:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/tds/common/widgets/dialog/AbstractAlertDialog$Event;->listener:Landroid/view/View$OnClickListener;

    .line 48
    return-void
.end method

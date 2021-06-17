.class public final Lcom/facebook/share/widget/AppInviteDialog$Result;
.super Ljava/lang/Object;
.source "AppInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/AppInviteDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/facebook/share/widget/AppInviteDialog$Result;->bundle:Landroid/os/Bundle;

    .line 70
    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/facebook/share/widget/AppInviteDialog$Result;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

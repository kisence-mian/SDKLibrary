.class Landroidx/navigation/NavController$2;
.super Landroidx/activity/OnBackPressedCallback;
.source "NavController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/navigation/NavController;


# direct methods
.method constructor <init>(Landroidx/navigation/NavController;Z)V
    .registers 3
    .param p1, "this$0"    # Landroidx/navigation/NavController;
    .param p2, "x0"    # Z

    .line 115
    iput-object p1, p0, Landroidx/navigation/NavController$2;->this$0:Landroidx/navigation/NavController;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .registers 2

    .line 118
    iget-object v0, p0, Landroidx/navigation/NavController$2;->this$0:Landroidx/navigation/NavController;

    invoke-virtual {v0}, Landroidx/navigation/NavController;->popBackStack()Z

    .line 119
    return-void
.end method

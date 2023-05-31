.class public Lcom/taptap/sdk/KeyboardStatusDetector;
.super Ljava/lang/Object;
.source "KeyboardStatusDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;
    }
.end annotation


# static fields
.field private static final SOFT_KEY_BOARD_MIN_HEIGHT:I = 0x64


# instance fields
.field keyboardVisible:Z

.field private mVisibilityListener:Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taptap/sdk/KeyboardStatusDetector;->keyboardVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/KeyboardStatusDetector;)Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/KeyboardStatusDetector;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/taptap/sdk/KeyboardStatusDetector;->mVisibilityListener:Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;

    return-object v0
.end method


# virtual methods
.method public registerActivity(Landroid/app/Activity;)Lcom/taptap/sdk/KeyboardStatusDetector;
    .registers 4
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taptap/sdk/KeyboardStatusDetector;->registerView(Landroid/view/View;)Lcom/taptap/sdk/KeyboardStatusDetector;

    move-result-object v0

    return-object v0
.end method

.method public registerFragment(Landroid/support/v4/app/Fragment;)Lcom/taptap/sdk/KeyboardStatusDetector;
    .registers 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 18
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taptap/sdk/KeyboardStatusDetector;->registerView(Landroid/view/View;)Lcom/taptap/sdk/KeyboardStatusDetector;

    move-result-object v0

    return-object v0
.end method

.method public registerView(Landroid/view/View;)Lcom/taptap/sdk/KeyboardStatusDetector;
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/KeyboardStatusDetector$1;

    invoke-direct {v1, p0, p1}, Lcom/taptap/sdk/KeyboardStatusDetector$1;-><init>(Lcom/taptap/sdk/KeyboardStatusDetector;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 51
    return-object p0
.end method

.method public setVisibilityListener(Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;)Lcom/taptap/sdk/KeyboardStatusDetector;
    .registers 2
    .param p1, "listener"    # Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/taptap/sdk/KeyboardStatusDetector;->mVisibilityListener:Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;

    .line 56
    return-object p0
.end method

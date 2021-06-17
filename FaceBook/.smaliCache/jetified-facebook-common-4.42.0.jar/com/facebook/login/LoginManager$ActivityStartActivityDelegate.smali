.class Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/login/StartActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityStartActivityDelegate"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 871
    iput-object p1, p0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;->activity:Landroid/app/Activity;

    .line 872
    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/app/Activity;
    .registers 2

    .line 881
    iget-object v0, p0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 876
    iget-object v0, p0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 877
    return-void
.end method

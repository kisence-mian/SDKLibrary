.class Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->saveInner(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;Z)V
    .registers 3

    .line 519
    iput-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$3;->this$0:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

    iput-boolean p2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$3;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 522
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$3;->this$0:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

    iget-boolean v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$3;->val$force:Z

    # invokes: Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->saveInner(Z)V
    invoke-static {v0, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->access$300(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;Z)V

    .line 523
    return-void
.end method

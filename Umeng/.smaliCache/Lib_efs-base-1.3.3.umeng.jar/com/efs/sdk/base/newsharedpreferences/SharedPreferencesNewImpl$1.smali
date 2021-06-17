.class Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;-><init>(Ljava/io/File;ILcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;


# direct methods
.method constructor <init>(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$1;->this$0:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 139
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$1;->this$0:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

    # getter for: Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->access$000(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 145
    :cond_14
    return-void

    .line 144
    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    return-void
.end method

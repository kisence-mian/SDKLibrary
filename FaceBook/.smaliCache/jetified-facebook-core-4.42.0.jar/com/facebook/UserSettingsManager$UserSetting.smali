.class Lcom/facebook/UserSettingsManager$UserSetting;
.super Ljava/lang/Object;
.source "UserSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/UserSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserSetting"
.end annotation


# instance fields
.field defaultVal:Z

.field keyInCache:Ljava/lang/String;

.field keyInManifest:Ljava/lang/String;

.field lastTS:J

.field value:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "defaultVal"    # Z
    .param p2, "keyInCache"    # Ljava/lang/String;
    .param p3, "keyInManifest"    # Ljava/lang/String;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-boolean p1, p0, Lcom/facebook/UserSettingsManager$UserSetting;->defaultVal:Z

    .line 260
    iput-object p2, p0, Lcom/facebook/UserSettingsManager$UserSetting;->keyInCache:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Lcom/facebook/UserSettingsManager$UserSetting;->keyInManifest:Ljava/lang/String;

    .line 262
    return-void
.end method


# virtual methods
.method getValue()Z
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/facebook/UserSettingsManager$UserSetting;->defaultVal:Z

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_b
    return v0
.end method

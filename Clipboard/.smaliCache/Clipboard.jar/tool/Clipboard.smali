.class public Ltool/Clipboard;
.super LsdkInterface/SDKBase;
.source "Clipboard.java"

# interfaces
.implements LsdkInterface/IOther;


# static fields
.field public static clipboard:Landroid/content/ClipboardManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const/4 v0, 0x0

    sput-object v0, Ltool/Clipboard;->clipboard:Landroid/content/ClipboardManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, LsdkInterface/SDKBase;-><init>()V

    return-void
.end method


# virtual methods
.method public GetFunctionName()[Ljava/lang/String;
    .registers 3

    .line 22
    const-string v0, "CopyToClipboard"

    const-string v1, "CopyFromClipboard"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Other(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clipboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 31
    :try_start_1a
    const-string v0, "FunctionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "functionName":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_70

    :cond_28
    goto :goto_3c

    :sswitch_29
    const-string v2, "CopyToClipboard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x0

    goto :goto_3c

    :sswitch_33
    const-string v2, "CopyFromClipboard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x1

    :goto_3c
    packed-switch v1, :pswitch_data_7a

    goto :goto_52

    .line 38
    :pswitch_40
    invoke-virtual {p0}, Ltool/Clipboard;->getTextFromClipboard()V

    goto :goto_52

    .line 35
    :pswitch_44
    invoke-virtual {p0}, Ltool/Clipboard;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Content"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ltool/Clipboard;->copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_51} :catch_53

    .line 36
    nop

    .line 45
    .end local v0    # "functionName":Ljava/lang/String;
    :goto_52
    goto :goto_6e

    .line 42
    :catch_53
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clipboard Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6e
    return-void

    nop

    :sswitch_data_70
    .sparse-switch
        0x4bf32b77 -> :sswitch_33
        0x4ed1ee86 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_44
        :pswitch_40
    .end packed-switch
.end method

.method public copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clipboard copyTextToClipboard ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ltool/Clipboard$1;

    invoke-direct {v1, p0, p1, p2}, Ltool/Clipboard$1;-><init>(Ltool/Clipboard;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 69
    return-void
.end method

.method public getTextFromClipboard()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    const-string v0, "Clipboard getTextFromClipboard"

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 73
    const-string v0, ""

    .line 74
    .local v0, "content":Ljava/lang/String;
    sget-object v1, Ltool/Clipboard;->clipboard:Landroid/content/ClipboardManager;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v1, Ltool/Clipboard;->clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 75
    sget-object v1, Ltool/Clipboard;->clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    .line 76
    .local v1, "cdText":Landroid/content/ClipData;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 77
    .local v2, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .end local v1    # "cdText":Landroid/content/ClipData;
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_32
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v1, "jo":Lorg/json/JSONObject;
    const-string v2, "ModuleName"

    const-string v3, "Other"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v2, "FunctionName"

    const-string v3, "CopyFromClipboard"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v2, "Content"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    invoke-static {v1}, LsdkInterface/SdkInterface;->SendMessage(Lorg/json/JSONObject;)V

    .line 86
    return-void
.end method

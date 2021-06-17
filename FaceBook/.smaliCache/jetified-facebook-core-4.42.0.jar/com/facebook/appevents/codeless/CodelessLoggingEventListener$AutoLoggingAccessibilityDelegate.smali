.class public Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "CodelessLoggingEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoLoggingAccessibilityDelegate"
.end annotation


# instance fields
.field private accessibilityEventType:I

.field private existingDelegate:Landroid/view/View$AccessibilityDelegate;

.field private hostView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mapping:Lcom/facebook/appevents/codeless/internal/EventBinding;

.field private rootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected supportButtonIndexing:Z

.field private supportCodelessLogging:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->supportCodelessLogging:Z

    .line 140
    iput-boolean v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->supportButtonIndexing:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)V
    .registers 8
    .param p1, "mapping"    # Lcom/facebook/appevents/codeless/internal/EventBinding;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "hostView"    # Landroid/view/View;

    .line 53
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->supportCodelessLogging:Z

    .line 140
    iput-boolean v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->supportButtonIndexing:Z

    .line 54
    if-eqz p1, :cond_65

    if-eqz p2, :cond_65

    if-nez p3, :cond_f

    goto :goto_65

    .line 58
    :cond_f
    invoke-static {p3}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->existingDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 60
    iput-object p1, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->mapping:Lcom/facebook/appevents/codeless/internal/EventBinding;

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->hostView:Ljava/lang/ref/WeakReference;

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->rootView:Ljava/lang/ref/WeakReference;

    .line 63
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getType()Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    move-result-object v0

    .line 65
    .local v0, "type":Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;
    sget-object v1, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;->$SwitchMap$com$facebook$appevents$codeless$internal$EventBinding$ActionType:[I

    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getType()Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_66

    .line 76
    new-instance v1, Lcom/facebook/FacebookException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported action type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :pswitch_56
    const/16 v1, 0x10

    iput v1, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->accessibilityEventType:I

    .line 74
    goto :goto_62

    .line 70
    :pswitch_5b
    const/4 v1, 0x4

    iput v1, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->accessibilityEventType:I

    .line 71
    goto :goto_62

    .line 67
    :pswitch_5f
    iput v2, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->accessibilityEventType:I

    .line 68
    nop

    .line 78
    :goto_62
    iput-boolean v2, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->supportCodelessLogging:Z

    .line 79
    return-void

    .line 55
    .end local v0    # "type":Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;
    :cond_65
    :goto_65
    return-void

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_5b
        :pswitch_56
    .end packed-switch
.end method

.method private logEvent()V
    .registers 7

    .line 99
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->mapping:Lcom/facebook/appevents/codeless/internal/EventBinding;

    invoke-virtual {v0}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getEventName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "eventName":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->mapping:Lcom/facebook/appevents/codeless/internal/EventBinding;

    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->rootView:Ljava/lang/ref/WeakReference;

    .line 102
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->hostView:Ljava/lang/ref/WeakReference;

    .line 103
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 100
    invoke-static {v1, v2, v3}, Lcom/facebook/appevents/codeless/CodelessMatcher;->getParameters(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    .line 106
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v2, "_valueToSum"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 107
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "value":Ljava/lang/String;
    nop

    .line 110
    invoke-static {v3}, Lcom/facebook/appevents/internal/AppEventUtility;->normalizePrice(Ljava/lang/String;)D

    move-result-wide v4

    .line 108
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 113
    .end local v3    # "value":Ljava/lang/String;
    :cond_30
    const-string v2, "_is_fb_codeless"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    move-object v2, v1

    .line 116
    .local v2, "params":Landroid/os/Bundle;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1;-><init>(Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method


# virtual methods
.method public getSupportButtonIndexing()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->supportButtonIndexing:Z

    return v0
.end method

.method public getSupportCodelessLogging()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->supportCodelessLogging:Z

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .line 83
    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    .line 84
    # getter for: Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsupported action type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_c
    iget v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->accessibilityEventType:I

    if-eq p2, v0, :cond_11

    .line 87
    return-void

    .line 90
    :cond_11
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->existingDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_1c

    instance-of v1, v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;

    if-nez v1, :cond_1c

    .line 92
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 95
    :cond_1c
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->logEvent()V

    .line 96
    return-void
.end method

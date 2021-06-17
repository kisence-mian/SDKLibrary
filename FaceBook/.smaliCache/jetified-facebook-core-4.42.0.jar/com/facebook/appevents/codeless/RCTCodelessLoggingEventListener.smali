.class public Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener;
.super Ljava/lang/Object;
.source "RCTCodelessLoggingEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOnTouchListener(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;
    .registers 4
    .param p0, "mapping"    # Lcom/facebook/appevents/codeless/internal/EventBinding;
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "hostView"    # Landroid/view/View;

    .line 44
    new-instance v0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;-><init>(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

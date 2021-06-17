.class public Lcom/tapjoy/TJAdUnitConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJAdUnitConstants$String;
    }
.end annotation


# static fields
.field public static final ADUNIT_CALLBACK_METHOD:Ljava/lang/String; = "if(window.AndroidWebViewJavascriptBridge) AndroidWebViewJavascriptBridge._handleMessageFromAndroid"

.field public static final AUCTION_PARAM_PREFIX:Ljava/lang/String; = "auction_"

.field public static final CUSTOM_CLOSE_TIMEOUT:I = 0x3e8

.field public static final DEFAULT_VOLUME_CHECK_INTERVAL:I = 0x1f4

.field public static final EVENTS_PROXY_PATH:Ljava/lang/String; = "events/proxy?"

.field public static final EXTRA_TJ_PLACEMENT_DATA:Ljava/lang/String; = "placement_data"

.field public static final JAVASCRIPT_INTERFACE_ID:Ljava/lang/String; = "AndroidJavascriptInterface"

.field public static final PARAM_ACTION_ID_EXCLUSION:Ljava/lang/String; = "action_id_exclusion"

.field public static final PARAM_PLACEMENT_BY_SDK:Ljava/lang/String; = "system_placement"

.field public static final PARAM_PLACEMENT_MEDIATION_AGENT:Ljava/lang/String; = "mediation_agent"

.field public static final PARAM_PLACEMENT_MEDIATION_ID:Ljava/lang/String; = "mediation_id"

.field public static final PARAM_PLACEMENT_NAME:Ljava/lang/String; = "event_name"

.field public static final PARAM_PLACEMENT_PRELOAD:Ljava/lang/String; = "event_preload"

.field public static final PARAM_PUSH_ID:Ljava/lang/String; = "push_id"

.field public static final SHARE_CHOOSE_TITLE:Ljava/lang/String; = "Select"

.field public static final SPINNER_TITLE:Ljava/lang/String; = "Loading..."


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

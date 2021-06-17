.class public Lcom/facebook/internal/DialogPresenter;
.super Ljava/lang/Object;
.source "DialogPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/DialogPresenter$ParameterProvider;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canPresentNativeDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z
    .registers 3
    .param p0, "feature"    # Lcom/facebook/internal/DialogFeature;

    .line 79
    invoke-static {p0}, Lcom/facebook/internal/DialogPresenter;->getProtocolVersionForNativeDialog(Lcom/facebook/internal/DialogFeature;)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->getProtocolVersion()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static canPresentWebFallbackDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z
    .registers 2
    .param p0, "feature"    # Lcom/facebook/internal/DialogFeature;

    .line 84
    invoke-static {p0}, Lcom/facebook/internal/DialogPresenter;->getDialogWebFallbackUri(Lcom/facebook/internal/DialogFeature;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static getDialogWebFallbackUri(Lcom/facebook/internal/DialogFeature;)Landroid/net/Uri;
    .registers 6
    .param p0, "feature"    # Lcom/facebook/internal/DialogFeature;

    .line 229
    invoke-interface {p0}, Lcom/facebook/internal/DialogFeature;->name()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "featureName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/facebook/internal/DialogFeature;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "action":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "applicationId":Ljava/lang/String;
    nop

    .line 234
    invoke-static {v2, v1, v0}, Lcom/facebook/internal/FetchedAppSettings;->getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    move-result-object v3

    .line 235
    .local v3, "config":Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    const/4 v4, 0x0

    .line 236
    .local v4, "fallbackUrl":Landroid/net/Uri;
    if-eqz v3, :cond_18

    .line 237
    invoke-virtual {v3}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getFallbackUrl()Landroid/net/Uri;

    move-result-object v4

    .line 240
    :cond_18
    return-object v4
.end method

.method public static getProtocolVersionForNativeDialog(Lcom/facebook/internal/DialogFeature;)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;
    .registers 5
    .param p0, "feature"    # Lcom/facebook/internal/DialogFeature;

    .line 245
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "applicationId":Ljava/lang/String;
    invoke-interface {p0}, Lcom/facebook/internal/DialogFeature;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "action":Ljava/lang/String;
    invoke-static {v0, v1, p0}, Lcom/facebook/internal/DialogPresenter;->getVersionSpecForFeature(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/internal/DialogFeature;)[I

    move-result-object v2

    .line 249
    .local v2, "featureVersionSpec":[I
    invoke-static {v1, v2}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAction(Ljava/lang/String;[I)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    move-result-object v3

    return-object v3
.end method

.method private static getVersionSpecForFeature(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/internal/DialogFeature;)[I
    .registers 7
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "feature"    # Lcom/facebook/internal/DialogFeature;

    .line 260
    nop

    .line 261
    invoke-interface {p2}, Lcom/facebook/internal/DialogFeature;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/internal/FetchedAppSettings;->getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    move-result-object v0

    .line 262
    .local v0, "config":Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    if-eqz v0, :cond_10

    .line 263
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getVersionSpec()[I

    move-result-object v1

    return-object v1

    .line 265
    :cond_10
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-interface {p2}, Lcom/facebook/internal/DialogFeature;->getMinVersion()I

    move-result v3

    aput v3, v1, v2

    return-object v1
.end method

.method public static logDialogActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "outcome"    # Ljava/lang/String;

    .line 273
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 274
    .local v0, "logger":Lcom/facebook/appevents/AppEventsLogger;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v2, "fb_dialog_outcome"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 277
    return-void
.end method

.method public static present(Lcom/facebook/internal/AppCall;Landroid/app/Activity;)V
    .registers 4
    .param p0, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 64
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getRequestCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 66
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->setPending()Z

    .line 67
    return-void
.end method

.method public static present(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/FragmentWrapper;)V
    .registers 4
    .param p0, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p1, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;

    .line 70
    nop

    .line 71
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getRequestCode()I

    move-result v1

    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/FragmentWrapper;->startActivityForResult(Landroid/content/Intent;I)V

    .line 74
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->setPending()Z

    .line 75
    return-void
.end method

.method public static setupAppCallForCannotShowError(Lcom/facebook/internal/AppCall;)V
    .registers 3
    .param p0, "appCall"    # Lcom/facebook/internal/AppCall;

    .line 47
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "e":Lcom/facebook/FacebookException;
    invoke-static {p0, v0}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForValidationError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V

    .line 51
    return-void
.end method

.method public static setupAppCallForErrorResult(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V
    .registers 7
    .param p0, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .line 88
    if-nez p1, :cond_3

    .line 89
    return-void

    .line 91
    :cond_3
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;)V

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, "errorResultIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    sget-object v1, Lcom/facebook/FacebookActivity;->PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    nop

    .line 99
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 101
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v3

    .line 102
    invoke-static {p1}, Lcom/facebook/internal/NativeProtocol;->createBundleForException(Lcom/facebook/FacebookException;)Landroid/os/Bundle;

    move-result-object v4

    .line 97
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/internal/NativeProtocol;->setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/facebook/internal/AppCall;->setRequestIntent(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public static setupAppCallForNativeDialog(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/DialogPresenter$ParameterProvider;Lcom/facebook/internal/DialogFeature;)V
    .registers 11
    .param p0, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p1, "parameterProvider"    # Lcom/facebook/internal/DialogPresenter$ParameterProvider;
    .param p2, "feature"    # Lcom/facebook/internal/DialogFeature;

    .line 190
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 191
    .local v0, "context":Landroid/content/Context;
    invoke-interface {p2}, Lcom/facebook/internal/DialogFeature;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "action":Ljava/lang/String;
    nop

    .line 193
    invoke-static {p2}, Lcom/facebook/internal/DialogPresenter;->getProtocolVersionForNativeDialog(Lcom/facebook/internal/DialogFeature;)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    move-result-object v2

    .line 194
    .local v2, "protocolVersionResult":Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;
    invoke-virtual {v2}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->getProtocolVersion()I

    move-result v3

    .line 195
    .local v3, "protocolVersion":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_46

    .line 202
    invoke-static {v3}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 204
    invoke-interface {p1}, Lcom/facebook/internal/DialogPresenter$ParameterProvider;->getParameters()Landroid/os/Bundle;

    move-result-object v4

    .local v4, "params":Landroid/os/Bundle;
    goto :goto_23

    .line 207
    .end local v4    # "params":Landroid/os/Bundle;
    :cond_1f
    invoke-interface {p1}, Lcom/facebook/internal/DialogPresenter$ParameterProvider;->getLegacyParameters()Landroid/os/Bundle;

    move-result-object v4

    .line 209
    .restart local v4    # "params":Landroid/os/Bundle;
    :goto_23
    if-nez v4, :cond_2b

    .line 210
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v4, v5

    .line 213
    :cond_2b
    nop

    .line 215
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 213
    invoke-static {v0, v5, v1, v2, v4}, Lcom/facebook/internal/NativeProtocol;->createPlatformActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    .line 219
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_3e

    .line 225
    invoke-virtual {p0, v5}, Lcom/facebook/internal/AppCall;->setRequestIntent(Landroid/content/Intent;)V

    .line 226
    return-void

    .line 220
    :cond_3e
    new-instance v6, Lcom/facebook/FacebookException;

    const-string v7, "Unable to create Intent; this likely means theFacebook app is not installed."

    invoke-direct {v6, v7}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 196
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_46
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "Cannot present this dialog. This likely means that the Facebook app is not installed."

    invoke-direct {v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static setupAppCallForValidationError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V
    .registers 2
    .param p0, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p1, "validationError"    # Lcom/facebook/FacebookException;

    .line 55
    invoke-static {p0, p1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForErrorResult(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V

    .line 56
    return-void
.end method

.method public static setupAppCallForWebDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .line 111
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;)V

    .line 112
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasInternetPermissions(Landroid/content/Context;)V

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v0, "intentParameters":Landroid/os/Bundle;
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "params"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 118
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v1, "webDialogIntent":Landroid/content/Intent;
    nop

    .line 121
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v3

    .line 119
    invoke-static {v1, v2, p1, v3, v0}, Lcom/facebook/internal/NativeProtocol;->setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 125
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/facebook/FacebookActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    const-string v2, "FacebookDialogFragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v1}, Lcom/facebook/internal/AppCall;->setRequestIntent(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public static setupAppCallForWebFallbackDialog(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;Lcom/facebook/internal/DialogFeature;)V
    .registers 12
    .param p0, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "feature"    # Lcom/facebook/internal/DialogFeature;

    .line 135
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;)V

    .line 136
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasInternetPermissions(Landroid/content/Context;)V

    .line 138
    invoke-interface {p2}, Lcom/facebook/internal/DialogFeature;->name()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "featureName":Ljava/lang/String;
    invoke-static {p2}, Lcom/facebook/internal/DialogPresenter;->getDialogWebFallbackUri(Lcom/facebook/internal/DialogFeature;)Landroid/net/Uri;

    move-result-object v1

    .line 140
    .local v1, "fallbackUrl":Landroid/net/Uri;
    if-eqz v1, :cond_92

    .line 147
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v2

    .line 148
    .local v2, "protocolVersion":I
    nop

    .line 149
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-static {v3, v2, p1}, Lcom/facebook/internal/ServerProtocol;->getQueryParamsForPlatformActivityIntentWebFallback(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 152
    .local v3, "webParams":Landroid/os/Bundle;
    if-eqz v3, :cond_8a

    .line 157
    invoke-virtual {v1}, Landroid/net/Uri;->isRelative()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 159
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    invoke-static {v4, v5, v3}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_4b

    .line 163
    :cond_3e
    nop

    .line 164
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-static {v4, v5, v3}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v1

    .line 169
    :goto_4b
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v4, "intentParameters":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v5, 0x1

    const-string v6, "is_fallback"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v5, "webDialogIntent":Landroid/content/Intent;
    nop

    .line 176
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-interface {p2}, Lcom/facebook/internal/DialogFeature;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 178
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v8

    .line 174
    invoke-static {v5, v6, v7, v8, v4}, Lcom/facebook/internal/NativeProtocol;->setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 180
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/facebook/FacebookActivity;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 181
    const-string v6, "FacebookDialogFragment"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v5}, Lcom/facebook/internal/AppCall;->setRequestIntent(Landroid/content/Intent;)V

    .line 184
    return-void

    .line 153
    .end local v4    # "intentParameters":Landroid/os/Bundle;
    .end local v5    # "webDialogIntent":Landroid/content/Intent;
    :cond_8a
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "Unable to fetch the app\'s key-hash"

    invoke-direct {v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 141
    .end local v2    # "protocolVersion":I
    .end local v3    # "webParams":Landroid/os/Bundle;
    :cond_92
    new-instance v2, Lcom/facebook/FacebookException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to fetch the Url for the DialogFeature : \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

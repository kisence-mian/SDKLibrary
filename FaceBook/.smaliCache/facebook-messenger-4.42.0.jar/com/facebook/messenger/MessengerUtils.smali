.class public Lcom/facebook/messenger/MessengerUtils;
.super Ljava/lang/Object;
.source "MessengerUtils.java"


# static fields
.field public static final EXTRA_APP_ID:Ljava/lang/String; = "com.facebook.orca.extra.APPLICATION_ID"

.field public static final EXTRA_EXTERNAL_URI:Ljava/lang/String; = "com.facebook.orca.extra.EXTERNAL_URI"

.field public static final EXTRA_IS_COMPOSE:Ljava/lang/String; = "com.facebook.orca.extra.IS_COMPOSE"

.field public static final EXTRA_IS_REPLY:Ljava/lang/String; = "com.facebook.orca.extra.IS_REPLY"

.field public static final EXTRA_METADATA:Ljava/lang/String; = "com.facebook.orca.extra.METADATA"

.field public static final EXTRA_PARTICIPANTS:Ljava/lang/String; = "com.facebook.orca.extra.PARTICIPANTS"

.field public static final EXTRA_PROTOCOL_VERSION:Ljava/lang/String; = "com.facebook.orca.extra.PROTOCOL_VERSION"

.field public static final EXTRA_REPLY_TOKEN_KEY:Ljava/lang/String; = "com.facebook.orca.extra.REPLY_TOKEN"

.field public static final EXTRA_THREAD_TOKEN_KEY:Ljava/lang/String; = "com.facebook.orca.extra.THREAD_TOKEN"

.field public static final ORCA_THREAD_CATEGORY_20150314:Ljava/lang/String; = "com.facebook.orca.category.PLATFORM_THREAD_20150314"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.facebook.orca"

.field public static final PROTOCOL_VERSION_20150314:I = 0x133782a

.field private static final TAG:Ljava/lang/String; = "MessengerUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishShareToMessenger(Landroid/app/Activity;Lcom/facebook/messenger/ShareToMessengerParams;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "shareToMessengerParams"    # Lcom/facebook/messenger/ShareToMessengerParams;

    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 200
    .local v0, "originalIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 201
    .local v1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_13

    .line 203
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 205
    return-void

    .line 208
    :cond_13
    const-string v4, "com.facebook.orca.category.PLATFORM_THREAD_20150314"

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 209
    invoke-static {v0}, Lbolts/AppLinks;->getAppLinkExtras(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    .line 211
    .local v2, "appLinkExtras":Landroid/os/Bundle;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v3, "resultIntent":Landroid/content/Intent;
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 213
    const v4, 0x133782a

    const-string v5, "com.facebook.orca.extra.PROTOCOL_VERSION"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string v4, "com.facebook.orca.extra.THREAD_TOKEN"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "threadToken":Ljava/lang/String;
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    .end local v5    # "threadToken":Ljava/lang/String;
    nop

    .line 219
    iget-object v4, p1, Lcom/facebook/messenger/ShareToMessengerParams;->uri:Landroid/net/Uri;

    iget-object v5, p1, Lcom/facebook/messenger/ShareToMessengerParams;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 221
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.facebook.orca.extra.APPLICATION_ID"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v4, p1, Lcom/facebook/messenger/ShareToMessengerParams;->metaData:Ljava/lang/String;

    const-string v5, "com.facebook.orca.extra.METADATA"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object v4, p1, Lcom/facebook/messenger/ShareToMessengerParams;->externalUri:Landroid/net/Uri;

    const-string v5, "com.facebook.orca.extra.EXTERNAL_URI"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 225
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 226
    .end local v2    # "appLinkExtras":Landroid/os/Bundle;
    .end local v3    # "resultIntent":Landroid/content/Intent;
    goto :goto_72

    .line 217
    .restart local v2    # "appLinkExtras":Landroid/os/Bundle;
    .restart local v3    # "resultIntent":Landroid/content/Intent;
    :cond_66
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    .line 228
    .end local v2    # "appLinkExtras":Landroid/os/Bundle;
    .end local v3    # "resultIntent":Landroid/content/Intent;
    :cond_6c
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 231
    :goto_72
    return-void
.end method

.method private static getAllAvailableProtocolVersions(Landroid/content/Context;)Ljava/util/Set;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 258
    .local v6, "contentResolver":Landroid/content/ContentResolver;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v7, v0

    .line 259
    .local v7, "allAvailableVersions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v0, "content://com.facebook.orca.provider.MessengerPlatformProvider/versions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 260
    .local v8, "uri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v9, "version"

    aput-object v9, v2, v0

    .line 261
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 262
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_43

    .line 264
    :try_start_23
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 265
    .local v1, "versionColumnIndex":I
    :goto_27
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 266
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 267
    .local v3, "version":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_3e

    .line 268
    nop

    .end local v3    # "version":I
    goto :goto_27

    .line 270
    .end local v1    # "versionColumnIndex":I
    :cond_3a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 271
    goto :goto_43

    .line 270
    :catchall_3e
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 271
    throw v1

    .line 273
    :cond_43
    :goto_43
    return-object v7
.end method

.method public static getMessengerThreadParamsForIntent(Landroid/content/Intent;)Lcom/facebook/messenger/MessengerThreadParams;
    .registers 11
    .param p0, "intent"    # Landroid/content/Intent;

    .line 162
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 163
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 164
    return-object v1

    .line 166
    :cond_8
    const-string v2, "com.facebook.orca.category.PLATFORM_THREAD_20150314"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 167
    invoke-static {p0}, Lbolts/AppLinks;->getAppLinkExtras(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 168
    .local v1, "appLinkExtras":Landroid/os/Bundle;
    const-string v2, "com.facebook.orca.extra.THREAD_TOKEN"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "threadToken":Ljava/lang/String;
    const-string v3, "com.facebook.orca.extra.METADATA"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "metadata":Ljava/lang/String;
    const-string v4, "com.facebook.orca.extra.PARTICIPANTS"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "participants":Ljava/lang/String;
    const-string v5, "com.facebook.orca.extra.IS_REPLY"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 172
    .local v5, "isReply":Z
    const-string v6, "com.facebook.orca.extra.IS_COMPOSE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 173
    .local v6, "isCompose":Z
    sget-object v7, Lcom/facebook/messenger/MessengerThreadParams$Origin;->UNKNOWN:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    .line 174
    .local v7, "origin":Lcom/facebook/messenger/MessengerThreadParams$Origin;
    if-eqz v5, :cond_39

    .line 175
    sget-object v7, Lcom/facebook/messenger/MessengerThreadParams$Origin;->REPLY_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    goto :goto_3d

    .line 176
    :cond_39
    if-eqz v6, :cond_3d

    .line 177
    sget-object v7, Lcom/facebook/messenger/MessengerThreadParams$Origin;->COMPOSE_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    .line 180
    :cond_3d
    :goto_3d
    new-instance v8, Lcom/facebook/messenger/MessengerThreadParams;

    .line 184
    invoke-static {v4}, Lcom/facebook/messenger/MessengerUtils;->parseParticipants(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v7, v2, v3, v9}, Lcom/facebook/messenger/MessengerThreadParams;-><init>(Lcom/facebook/messenger/MessengerThreadParams$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 180
    return-object v8

    .line 186
    .end local v1    # "appLinkExtras":Landroid/os/Bundle;
    .end local v2    # "threadToken":Ljava/lang/String;
    .end local v3    # "metadata":Ljava/lang/String;
    .end local v4    # "participants":Ljava/lang/String;
    .end local v5    # "isReply":Z
    .end local v6    # "isCompose":Z
    .end local v7    # "origin":Lcom/facebook/messenger/MessengerThreadParams$Origin;
    :cond_47
    return-object v1
.end method

.method public static hasMessengerInstalled(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 240
    const-string v0, "com.facebook.orca"

    invoke-static {p0, v0}, Lcom/facebook/internal/FacebookSignatureValidator;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static openMessengerInPlayStore(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 250
    :try_start_0
    const-string v0, "market://details?id=com.facebook.orca"

    invoke-static {p0, v0}, Lcom/facebook/messenger/MessengerUtils;->startViewUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_5} :catch_6

    .line 253
    goto :goto_c

    .line 251
    :catch_6
    move-exception v0

    .line 252
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v1, "http://play.google.com/store/apps/details?id=com.facebook.orca"

    invoke-static {p0, v1}, Lcom/facebook/messenger/MessengerUtils;->startViewUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 254
    .end local v0    # "anfe":Landroid/content/ActivityNotFoundException;
    :goto_c
    return-void
.end method

.method private static parseParticipants(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    if-eqz p0, :cond_25

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_25

    .line 284
    :cond_9
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "parts":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_24

    aget-object v4, v0, v3

    .line 287
    .local v4, "part":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v4    # "part":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 289
    :cond_24
    return-object v1

    .line 282
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_25
    :goto_25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static shareToMessenger(Landroid/app/Activity;ILcom/facebook/messenger/ShareToMessengerParams;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "shareToMessengerParams"    # Lcom/facebook/messenger/ShareToMessengerParams;

    .line 114
    invoke-static {p0}, Lcom/facebook/messenger/MessengerUtils;->hasMessengerInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 115
    invoke-static {p0}, Lcom/facebook/messenger/MessengerUtils;->openMessengerInPlayStore(Landroid/content/Context;)V

    .line 116
    return-void

    .line 119
    :cond_a
    invoke-static {p0}, Lcom/facebook/messenger/MessengerUtils;->getAllAvailableProtocolVersions(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 120
    .local v0, "allAvailableVersions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const v1, 0x133782a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 121
    invoke-static {p0, p1, p2}, Lcom/facebook/messenger/MessengerUtils;->shareToMessenger20150314(Landroid/app/Activity;ILcom/facebook/messenger/ShareToMessengerParams;)V

    goto :goto_22

    .line 124
    :cond_1f
    invoke-static {p0}, Lcom/facebook/messenger/MessengerUtils;->openMessengerInPlayStore(Landroid/content/Context;)V

    .line 126
    :goto_22
    return-void
.end method

.method private static shareToMessenger20150314(Landroid/app/Activity;ILcom/facebook/messenger/ShareToMessengerParams;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "shareToMessengerParams"    # Lcom/facebook/messenger/ShareToMessengerParams;

    .line 133
    const-string v0, "com.facebook.orca"

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "shareIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v2, "android.intent.extra.STREAM"

    iget-object v3, p2, Lcom/facebook/messenger/ShareToMessengerParams;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    iget-object v2, p2, Lcom/facebook/messenger/ShareToMessengerParams;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "appId":Ljava/lang/String;
    if-eqz v2, :cond_3d

    .line 140
    const-string v3, "com.facebook.orca.extra.PROTOCOL_VERSION"

    const v4, 0x133782a

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string v3, "com.facebook.orca.extra.APPLICATION_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v3, "com.facebook.orca.extra.METADATA"

    iget-object v4, p2, Lcom/facebook/messenger/ShareToMessengerParams;->metaData:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v3, "com.facebook.orca.extra.EXTERNAL_URI"

    iget-object v4, p2, Lcom/facebook/messenger/ShareToMessengerParams;->externalUri:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    :cond_3d
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_40
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_40} :catch_41

    .line 150
    .end local v1    # "shareIntent":Landroid/content/Intent;
    .end local v2    # "appId":Ljava/lang/String;
    goto :goto_4d

    .line 147
    :catch_41
    move-exception v1

    .line 148
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 149
    .local v0, "openMessenger":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 151
    .end local v0    # "openMessenger":Landroid/content/Intent;
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_4d
    return-void
.end method

.method private static startViewUri(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;

    .line 277
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 278
    return-void
.end method

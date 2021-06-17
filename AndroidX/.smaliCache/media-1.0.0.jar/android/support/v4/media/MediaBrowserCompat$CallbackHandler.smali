.class Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;
.super Landroid/os/Handler;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackHandler"
.end annotation


# instance fields
.field private final mCallbackImplRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksMessengerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;)V
    .registers 3
    .param p1, "callbackImpl"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 2080
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2081
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->mCallbackImplRef:Ljava/lang/ref/WeakReference;

    .line 2082
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 2086
    const-string v0, "MediaBrowserCompat"

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->mCallbacksMessengerRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_b3

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b3

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->mCallbackImplRef:Ljava/lang/ref/WeakReference;

    .line 2087
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    goto/16 :goto_b3

    .line 2090
    :cond_16
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 2091
    .local v1, "data":Landroid/os/Bundle;
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 2092
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->mCallbackImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 2093
    .local v2, "serviceCallback":Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->mCallbacksMessengerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/os/Messenger;

    .line 2095
    .local v9, "callbacksMessenger":Landroid/os/Messenger;
    const/4 v10, 0x1

    :try_start_2f
    iget v3, p1, Landroid/os/Message;->what:I
    :try_end_31
    .catch Landroid/os/BadParcelableException; {:try_start_2f .. :try_end_31} :catch_a5

    const-string v4, "data_media_item_id"

    packed-switch v3, :pswitch_data_b4

    .line 2126
    goto :goto_78

    .line 2111
    :pswitch_37
    :try_start_37
    const-string v3, "data_options"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 2112
    .local v7, "options":Landroid/os/Bundle;
    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 2114
    const-string v3, "data_notify_children_changed_options"

    .line 2115
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 2116
    .local v8, "notifyChildrenChangedOptions":Landroid/os/Bundle;
    invoke-static {v8}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 2118
    nop

    .line 2119
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "data_media_item_list"

    .line 2120
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 2118
    move-object v3, v2

    move-object v4, v9

    invoke-interface/range {v3 .. v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onLoadChildren(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2123
    goto :goto_a4

    .line 2108
    .end local v7    # "options":Landroid/os/Bundle;
    .end local v8    # "notifyChildrenChangedOptions":Landroid/os/Bundle;
    :pswitch_5a
    invoke-interface {v2, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onConnectionFailed(Landroid/os/Messenger;)V

    .line 2109
    goto :goto_a4

    .line 2097
    :pswitch_5e
    const-string v3, "data_root_hints"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 2098
    .local v3, "rootHints":Landroid/os/Bundle;
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 2100
    nop

    .line 2101
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data_media_session_token"

    .line 2102
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 2100
    invoke-interface {v2, v9, v4, v5, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onServiceConnected(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V

    .line 2105
    goto :goto_a4

    .line 2126
    .end local v3    # "rootHints":Landroid/os/Bundle;
    :goto_78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n  Client version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n  Service version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Landroid/os/BadParcelableException; {:try_start_37 .. :try_end_a4} :catch_a5

    .line 2137
    :goto_a4
    goto :goto_b2

    .line 2130
    :catch_a5
    move-exception v3

    .line 2132
    .local v3, "e":Landroid/os/BadParcelableException;
    const-string v4, "Could not unparcel the data."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v10, :cond_b2

    .line 2135
    invoke-interface {v2, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onConnectionFailed(Landroid/os/Messenger;)V

    .line 2138
    .end local v3    # "e":Landroid/os/BadParcelableException;
    :cond_b2
    :goto_b2
    return-void

    .line 2088
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "serviceCallback":Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
    .end local v9    # "callbacksMessenger":Landroid/os/Messenger;
    :cond_b3
    :goto_b3
    return-void

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5a
        :pswitch_37
    .end packed-switch
.end method

.method setCallbacksMessenger(Landroid/os/Messenger;)V
    .registers 3
    .param p1, "callbacksMessenger"    # Landroid/os/Messenger;

    .line 2141
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->mCallbacksMessengerRef:Ljava/lang/ref/WeakReference;

    .line 2142
    return-void
.end method

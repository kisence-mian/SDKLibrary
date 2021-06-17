.class public final Landroidx/core/view/inputmethod/InputConnectionCompat;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    }
.end annotation


# static fields
.field private static final COMMIT_CONTENT_ACTION:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_FLAGS_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_INTEROP_ACTION:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_LINK_URI_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_OPTS_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field private static final COMMIT_CONTENT_RESULT_RECEIVER_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field public static final INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    return-void
.end method

.method public static commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .registers 13
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputContentInfo"    # Landroidx/core/view/inputmethod/InputContentInfoCompat;
    .param p3, "flags"    # I
    .param p4, "opts"    # Landroid/os/Bundle;

    .line 132
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 133
    .local v0, "description":Landroid/content/ClipDescription;
    const/4 v1, 0x0

    .line 134
    .local v1, "supported":Z
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v3, :cond_1b

    aget-object v6, v2, v5

    .line 135
    .local v6, "mimeType":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 136
    const/4 v1, 0x1

    .line 137
    goto :goto_1b

    .line 134
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 140
    :cond_1b
    :goto_1b
    if-nez v1, :cond_1e

    .line 141
    return v4

    .line 144
    :cond_1e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_30

    .line 145
    nop

    .line 146
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputContentInfo;

    .line 145
    invoke-interface {p0, v2, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v2

    return v2

    .line 148
    :cond_30
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getProtocol(Landroid/view/inputmethod/EditorInfo;)I

    move-result v2

    .line 150
    .local v2, "protocol":I
    packed-switch v2, :pswitch_data_8c

    .line 160
    return v4

    .line 153
    :pswitch_38
    const/4 v3, 0x0

    .line 154
    .local v3, "interop":Z
    goto :goto_3c

    .line 156
    .end local v3    # "interop":Z
    :pswitch_3a
    const/4 v3, 0x1

    .line 157
    .restart local v3    # "interop":Z
    nop

    .line 163
    :goto_3c
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v4, "params":Landroid/os/Bundle;
    if-eqz v3, :cond_46

    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    goto :goto_48

    :cond_46
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    .line 167
    :goto_48
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    .line 164
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 168
    if-eqz v3, :cond_54

    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    goto :goto_56

    :cond_54
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    .line 171
    :goto_56
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v6

    .line 168
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 172
    if-eqz v3, :cond_62

    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    goto :goto_64

    :cond_62
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    .line 175
    :goto_64
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v6

    .line 172
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    if-eqz v3, :cond_70

    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    goto :goto_72

    :cond_70
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    :goto_72
    invoke-virtual {v4, v5, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    if-eqz v3, :cond_7a

    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    goto :goto_7c

    :cond_7a
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    :goto_7c
    invoke-virtual {v4, v5, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 185
    if-eqz v3, :cond_84

    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    goto :goto_86

    :cond_84
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    :goto_86
    invoke-interface {p0, v5, v4}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v5

    return v5

    nop

    :pswitch_data_8c
    .packed-switch 0x2
        :pswitch_3a
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method

.method public static createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .registers 7
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "onCommitContentListener"    # Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    .line 260
    if-eqz p0, :cond_33

    .line 263
    if-eqz p1, :cond_2b

    .line 266
    if-eqz p2, :cond_23

    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    const/4 v2, 0x0

    if-lt v0, v1, :cond_14

    .line 270
    move-object v0, p2

    .line 271
    .local v0, "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v1, Landroidx/core/view/inputmethod/InputConnectionCompat$1;

    invoke-direct {v1, p0, v2, v0}, Landroidx/core/view/inputmethod/InputConnectionCompat$1;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    return-object v1

    .line 283
    .end local v0    # "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    :cond_14
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "contentMimeTypes":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_1c

    .line 285
    return-object p0

    .line 287
    :cond_1c
    move-object v1, p2

    .line 288
    .local v1, "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v3, Landroidx/core/view/inputmethod/InputConnectionCompat$2;

    invoke-direct {v3, p0, v2, v1}, Landroidx/core/view/inputmethod/InputConnectionCompat$2;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    return-object v3

    .line 267
    .end local v0    # "contentMimeTypes":[Ljava/lang/String;
    .end local v1    # "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onCommitContentListener must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "editorInfo must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputConnection must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z
    .registers 15
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "onCommitContentListener"    # Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    .line 72
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 73
    return v0

    .line 77
    :cond_4
    const-string v1, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 78
    const/4 v1, 0x0

    .local v1, "interop":Z
    goto :goto_17

    .line 79
    .end local v1    # "interop":Z
    :cond_e
    const-string v1, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 80
    const/4 v1, 0x1

    .line 84
    .restart local v1    # "interop":Z
    :goto_17
    const/4 v2, 0x0

    .line 85
    .local v2, "resultReceiver":Landroid/os/ResultReceiver;
    const/4 v3, 0x0

    .line 87
    .local v3, "result":Z
    const/4 v4, 0x0

    if-eqz v1, :cond_1f

    :try_start_1c
    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    goto :goto_21

    :cond_1f
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    :goto_21
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/ResultReceiver;

    move-object v2, v5

    .line 90
    if-eqz v1, :cond_2d

    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    goto :goto_2f

    :cond_2d
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    :goto_2f
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 93
    .local v5, "contentUri":Landroid/net/Uri;
    if-eqz v1, :cond_3a

    const-string v6, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    goto :goto_3c

    :cond_3a
    const-string v6, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    :goto_3c
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/ClipDescription;

    .line 96
    .local v6, "description":Landroid/content/ClipDescription;
    if-eqz v1, :cond_47

    const-string v7, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    goto :goto_49

    :cond_47
    const-string v7, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    :goto_49
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 99
    .local v7, "linkUri":Landroid/net/Uri;
    if-eqz v1, :cond_54

    const-string v8, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    goto :goto_56

    :cond_54
    const-string v8, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    :goto_56
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 102
    .local v8, "flags":I
    if-eqz v1, :cond_5f

    const-string v9, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    goto :goto_61

    :cond_5f
    const-string v9, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    :goto_61
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 105
    .local v9, "opts":Landroid/os/Bundle;
    if-eqz v5, :cond_75

    if-eqz v6, :cond_75

    .line 106
    new-instance v10, Landroidx/core/view/inputmethod/InputContentInfoCompat;

    invoke-direct {v10, v5, v6, v7}, Landroidx/core/view/inputmethod/InputContentInfoCompat;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    .line 108
    .local v10, "inputContentInfo":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    invoke-interface {p2, v10, v8, v9}, Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result v11
    :try_end_74
    .catchall {:try_start_1c .. :try_end_74} :catchall_7e

    move v3, v11

    .line 111
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v6    # "description":Landroid/content/ClipDescription;
    .end local v7    # "linkUri":Landroid/net/Uri;
    .end local v8    # "flags":I
    .end local v9    # "opts":Landroid/os/Bundle;
    .end local v10    # "inputContentInfo":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    :cond_75
    if-eqz v2, :cond_7d

    .line 112
    if-eqz v3, :cond_7a

    const/4 v0, 0x1

    :cond_7a
    invoke-virtual {v2, v0, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 115
    :cond_7d
    return v3

    .line 111
    :catchall_7e
    move-exception v0

    if-eqz v2, :cond_84

    .line 112
    invoke-virtual {v2, v3, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_84
    throw v0

    .line 82
    .end local v1    # "interop":Z
    .end local v2    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local v3    # "result":Z
    :cond_85
    return v0
.end method

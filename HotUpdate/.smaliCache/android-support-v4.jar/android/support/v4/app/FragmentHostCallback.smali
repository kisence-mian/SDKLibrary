.class public abstract Landroid/support/v4/app/FragmentHostCallback;
.super Landroid/support/v4/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field private mLoadersStarted:Z

.field private mRetainLoaders:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "windowAnimations"    # I

    .line 65
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    invoke-direct {p0}, Landroid/support/v4/app/FragmentContainer;-><init>()V

    .line 45
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 66
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 67
    iput-object p2, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 68
    iput-object p3, p0, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 69
    iput p4, p0, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "windowAnimations"    # I

    .line 57
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 58
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .line 61
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 62
    return-void
.end method


# virtual methods
.method doLoaderDestroy()V
    .registers 2

    .line 265
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    .line 266
    return-void

    .line 268
    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 269
    return-void
.end method

.method doLoaderRetain()V
    .registers 2

    .line 258
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    .line 259
    return-void

    .line 261
    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    .line 262
    return-void
.end method

.method doLoaderStart()V
    .registers 4

    .line 220
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_5

    .line 221
    return-void

    .line 223
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 225
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_10

    .line 226
    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    goto :goto_28

    .line 227
    :cond_10
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_28

    .line 228
    const/4 v1, 0x0

    const-string v2, "(root)"

    invoke-virtual {p0, v2, v0, v1}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 230
    if-eqz v1, :cond_28

    iget-boolean v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v1, :cond_28

    .line 231
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 234
    :cond_28
    :goto_28
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 235
    return-void
.end method

.method doLoaderStop(Z)V
    .registers 4
    .param p1, "retain"    # Z

    .line 239
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mRetainLoaders:Z

    .line 241
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_7

    .line 242
    return-void

    .line 245
    :cond_7
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-nez v1, :cond_c

    .line 246
    return-void

    .line 248
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 250
    if-eqz p1, :cond_15

    .line 251
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    goto :goto_18

    .line 253
    :cond_15
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    .line 255
    :goto_18
    return-void
.end method

.method dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 334
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 336
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_43

    .line 337
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 342
    :cond_43
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .registers 2

    .line 177
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 181
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;
    .registers 2

    .line 189
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .registers 2

    .line 185
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
    .registers 6
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "started"    # Z
    .param p3, "create"    # Z

    .line 287
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_b

    .line 288
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    .line 290
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 291
    .local v0, "lm":Landroid/support/v4/app/LoaderManagerImpl;
    if-nez v0, :cond_23

    .line 292
    if-eqz p3, :cond_26

    .line 293
    new-instance v1, Landroid/support/v4/app/LoaderManagerImpl;

    invoke-direct {v1, p1, p0, p2}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentHostCallback;Z)V

    move-object v0, v1

    .line 294
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 297
    :cond_23
    invoke-virtual {v0, p0}, Landroid/support/v4/app/LoaderManagerImpl;->updateHostController(Landroid/support/v4/app/FragmentHostCallback;)V

    .line 299
    :cond_26
    :goto_26
    return-object v0
.end method

.method getLoaderManagerImpl()Landroid/support/v4/app/LoaderManagerImpl;
    .registers 4

    .line 193
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_5

    .line 194
    return-object v0

    .line 196
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 197
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    const-string v2, "(root)"

    invoke-virtual {p0, v2, v1, v0}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 198
    return-object v0
.end method

.method getRetainLoaders()Z
    .registers 2

    .line 216
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mRetainLoaders:Z

    return v0
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .registers 4
    .param p1, "who"    # Ljava/lang/String;

    .line 203
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_18

    .line 204
    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 205
    .local v0, "lm":Landroid/support/v4/app/LoaderManagerImpl;
    if-eqz v0, :cond_18

    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_18

    .line 206
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 207
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .end local v0    # "lm":Landroid/support/v4/app/LoaderManagerImpl;
    :cond_18
    return-void
.end method

.method onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 213
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 82
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I

    .line 168
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .registers 3

    .line 96
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .registers 2

    .line 162
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public onHasView()Z
    .registers 2

    .line 173
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .registers 2

    .line 155
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .registers 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 141
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z
    .registers 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 88
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 148
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .line 119
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method public onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 128
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    if-ne p3, v0, :cond_9

    .line 132
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void

    .line 129
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSupportInvalidateOptionsMenu()V
    .registers 1

    .line 112
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method reportLoaderStart()V
    .registers 5

    .line 272
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_29

    .line 273
    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    .line 274
    .local v0, "N":I
    new-array v1, v0, [Landroid/support/v4/app/LoaderManagerImpl;

    .line 275
    .local v1, "loaders":[Landroid/support/v4/app/LoaderManagerImpl;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_1b

    .line 276
    iget-object v3, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v3, v1, v2

    .line 275
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 278
    .end local v2    # "i":I
    :cond_1b
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1c
    if-ge v2, v0, :cond_29

    .line 279
    aget-object v3, v1, v2

    .line 280
    .local v3, "lm":Landroid/support/v4/app/LoaderManagerImpl;
    invoke-virtual {v3}, Landroid/support/v4/app/LoaderManagerImpl;->finishRetain()V

    .line 281
    invoke-virtual {v3}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    .line 278
    .end local v3    # "lm":Landroid/support/v4/app/LoaderManagerImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 284
    .end local v0    # "N":I
    .end local v1    # "loaders":[Landroid/support/v4/app/LoaderManagerImpl;
    .end local v2    # "i":I
    :cond_29
    return-void
.end method

.method restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .line 330
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    .local p1, "loaderManagers":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<Ljava/lang/String;Landroid/support/v4/app/LoaderManager;>;"
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    .line 331
    return-void
.end method

.method retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .line 303
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    .line 304
    .local v0, "retainLoaders":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v1, :cond_34

    .line 307
    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    .line 308
    .local v1, "N":I
    new-array v2, v1, [Landroid/support/v4/app/LoaderManagerImpl;

    .line 309
    .local v2, "loaders":[Landroid/support/v4/app/LoaderManagerImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_d
    if-ltz v3, :cond_1c

    .line 310
    iget-object v4, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v4, v2, v3

    .line 309
    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    .line 312
    .end local v3    # "i":I
    :cond_1c
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1d
    if-ge v3, v1, :cond_34

    .line 313
    aget-object v4, v2, v3

    .line 314
    .local v4, "lm":Landroid/support/v4/app/LoaderManagerImpl;
    iget-boolean v5, v4, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v5, :cond_27

    .line 315
    const/4 v0, 0x1

    goto :goto_31

    .line 317
    :cond_27
    invoke-virtual {v4}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 318
    iget-object v5, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v6, v4, Landroid/support/v4/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .end local v4    # "lm":Landroid/support/v4/app/LoaderManagerImpl;
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 323
    .end local v1    # "N":I
    .end local v2    # "loaders":[Landroid/support/v4/app/LoaderManagerImpl;
    .end local v3    # "i":I
    :cond_34
    if-eqz v0, :cond_39

    .line 324
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    return-object v1

    .line 326
    :cond_39
    const/4 v1, 0x0

    return-object v1
.end method

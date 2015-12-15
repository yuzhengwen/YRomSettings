.class Lcom/android/settings/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPassword:Ljava/lang/String;

.field private final mUseCache:Z

.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method public constructor <init>(Lcom/android/settings/CryptKeeper;Ljava/lang/String;Z)V
    .locals 0
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->mPassword:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->mUseCache:Z

    return-void
.end method

.method private hide(I)V
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1, p1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .param p1    # [Ljava/lang/Void;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$400(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->mUseCache:Z

    if-eqz v2, :cond_0

    const-string v2, "CryptKeeper"

    const-string v3, "use cache for decrypting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->mPassword:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->mUseCache:Z

    invoke-interface {v1, v2, v3}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "CryptKeeper"

    const-string v3, "Error while decrypting..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1    # Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # setter for: Lcom/android/settings/CryptKeeper;->mFailedAttempts:I
    invoke-static {v2, v3}, Lcom/android/settings/CryptKeeper;->access$002(Lcom/android/settings/CryptKeeper;I)I

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->mUseCache:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/CryptKeeper;->mHasCrashed:Z
    invoke-static {v2, v3}, Lcom/android/settings/CryptKeeper;->access$502(Lcom/android/settings/CryptKeeper;Z)Z

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->setupUi()V
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$600(Lcom/android/settings/CryptKeeper;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$200(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$200(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->access$700(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$200(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->access$700(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f0f001e

    invoke-virtual {v2, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const v2, 0x7f0908aa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    const v2, 0x7f0f0051

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    const v2, 0x7f0f0052

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    const v2, 0x7f0f0041

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    const v2, 0x7f0f005c

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    const v2, 0x7f0f0050

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "com.sonymobile.storage.FORMAT_ALL_MEDIA_AND_FACTORY_RESET"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v2, v0}, Lcom/android/settings/CryptKeeper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f04002b

    invoke-virtual {v2, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v3, 0x1

    # invokes: Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/CryptKeeper;->access$800(Lcom/android/settings/CryptKeeper;Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V
    invoke-static {v2, p1}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->beginAttempt()V
    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$300(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method
